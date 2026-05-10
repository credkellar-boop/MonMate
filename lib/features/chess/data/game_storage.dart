import 'package:shared_preferences/shared_preferences.dart';

class GameStorage {
  static const String _fenKey = 'current_game_fen';

  Future<void> saveGame(String fen) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_fenKey, fen);
  }

  Future<String?> loadGame() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_fenKey);
  }
}
