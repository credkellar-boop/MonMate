import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:livekit_client/livekit_client.dart';

// Fixed import paths with correct package name
import 'package:monmate/features/chess/presentation/pages/chess_page.dart';
import 'package:monmate/features/wallet/presentation/pages/history_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize Supabase
  await Supabase.initialize(
    url: 'YOUR_SUPABASE_URL',
    anonKey: 'YOUR_SUPABASE_ANON_KEY',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MonMate',
      theme: ThemeData.dark(),
      home: const MainNavigationScreen(),
    );
  }
}

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;
  Room? _liveKitRoom;

  @override
  void initState() {
    super.initState();
    _initLiveKit();
    _setupSupabasePresence();
  }

  Future<void> _initLiveKit() async {
    try {
      _liveKitRoom = Room();
      print("LiveKit room initialized successfully");
    } catch (e) {
      print("Failed to initialize LiveKit: $e");
    }
  }

  void _setupSupabasePresence() {
    final client = Supabase.instance.client;
    final channel = client.channel('room-1');

    channel.onPresenceSync((payload) {
      print('Synced presence state: ${channel.presenceState()}');
    }).onPresenceJoin((payload) {
      print('User joined: ${payload.newPresences}');
    }).onPresenceLeave((payload) {
      print('User left: ${payload.leftPresences}');
    }).subscribe((status, [error]) async {
      if (status == RealtimeChannelStatus.subscribed) {
        await channel.track({'user_id': client.auth.currentUser?.id ?? 'anonymous'});
      }
    });
  }

  @override
  void dispose() {
    _liveKitRoom?.disconnect();
    super.dispose();
  }

  // Screens to navigate between
  final List<Widget> _screens = [
    const ChessPage(),
    const HistoryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background UI Widget Layout
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Color(0xFF121212)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          // Active Screen Content
          SafeArea(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: const Color(0xFF1A1A1A),
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            label: 'Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
        ],
      ),
    );
  }
}
