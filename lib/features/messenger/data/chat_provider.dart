import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// If you have a Message model file, import it here. 
// If not, this simple class definition below prevents the compiler from crashing.
class Message {
  final String id;
  final String senderId;
  final String text;
  final DateTime createdAt;

  Message({
    required this.id,
    required this.senderId,
    required this.text,
    required this.createdAt,
  });
}

class ChatProvider extends ChangeNotifier {
  final List<Message> _messages = [];
  List<Message> get messages => _messages;

  final SupabaseClient _supabase = Supabase.instance.client;

  String get myUserId => _supabase.auth.currentUser?.id ?? 'anonymous';

  void sendMessage(String text) {
    // Basic placeholder method to keep compiler happy
    if (text.isEmpty) return;
    
    final newMessage = Message(
      id: DateTime.now().toString(),
      senderId: myUserId,
      text: text,
      createdAt: DateTime.now(),
    );

    _messages.add(newMessage);
    notifyListeners();
  }
}
