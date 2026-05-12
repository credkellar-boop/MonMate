import 'package:flutter/material.dart';
import 'features/chess/presentation/pages/chess_page.dart';

// 1. Global key for navigation via deep links
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MonMateApp());
}

class MonMateApp extends StatelessWidget {
  const MonMateApp({super.key});

  // 2. Deep link handler
  void handleDeepLink(Uri uri) {
    if (uri.pathSegments.contains('join')) {
      final String? matchId = uri.queryParameters['matchId'];
      final String? wager = uri.queryParameters['wager'];

      if (matchId != null) {
        navigatorKey.currentState?.pushNamed(
          '/confirm-wager',
          arguments: {
            'matchId': matchId,
            'wager': double.tryParse(wager ?? '0') ?? 0.0,
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MonMate',
      navigatorKey: navigatorKey,
      theme: ThemeData.dark(), // Matches your UI aesthetic
      home: const ChessPage(), 
      // If you have a PulsingBackground widget, wrap ChessPage with it:
      // home: PulsingBackground(child: const ChessPage()),
      routes: {
        // Ensure you define this route in your features folder
        // '/confirm-wager': (context) => const ConfirmWagerPage(),
      },
    );
  }
}
