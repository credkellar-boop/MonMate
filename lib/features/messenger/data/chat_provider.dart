// Send a message via Supabase
Future<void> sendMessage(String matchId, String text) async {
  await Supabase.instance.client.from('messages').insert({
    'match_id': matchId,
    'content': text,
    'sender_id': myUserId,
  });
}

// Stream of messages for the UI
final messageStream = Supabase.instance.client
    .from('messages')
    .stream(primaryKey: ['id'])
    .eq('match_id', activeMatchId)
    .order('created_at');
