import 'package:flutter/material.dart';
// TODO: Import your actual pages here
// import 'package:monmate/features/chess/presentation/pages/chess_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MonMateApp());
}

class MonMateApp extends StatelessWidget {
  const MonMateApp({super.key});

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
      theme: ThemeData.dark(),
      home: const Scaffold(body: Center(child: Text('Chess Page'))),
      routes: {
        '/confirm-wager': (context) => const Scaffold(
              body: Center(child: Text('Confirm Wager')),
            ),
      },
    );
  }
}
