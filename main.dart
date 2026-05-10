// lib/main.dart
import 'features/chess/presentation/pages/chess_page.dart';

// ... inside MaterialApp ...
home: const ChessPage(),
// Inside your main.dart or App Router
void handleDeepLink(Uri uri) {
  if (uri.pathSegments.contains('join')) {
    String? matchId = uri.queryParameters['matchId'];
    String? wager = uri.queryParameters['wager'];
    
    if (matchId != null) {
      // Navigate to the Wager Confirmation Screen
      navigatorKey.currentState?.pushNamed('/confirm-wager', arguments: {
        'matchId': matchId,
        'wager': double.parse(wager ?? '0'),
      });
    }
  }
}
home: const PulsingBackground(
  child: ChessPage(),
),
