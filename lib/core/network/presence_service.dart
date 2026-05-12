import 'package:supabase_flutter/supabase_flutter.dart';

class PresenceService {
  final channel = Supabase.instance.client.channel('lobby');

  void goOnline(String userId) {
    channel.subscribe((status, error) {
      if (status == 'SUBSCRIBED') {
        channel.track({
          'user': userId,
          'online_at': DateTime.now().toIso8601String(),
          'status': 'Searching for Game',
        });
      }
    });
  }

  Stream<List<PresenceState>> get onlinePlayers =>
      channel.on(RealtimeListenTypes.presence, (payload, {ref}) {
        // Returns list of everyone currently connected
      }).asStream();
}
