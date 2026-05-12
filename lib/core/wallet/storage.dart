import 'package:isar/isar.dart';

@collection
class GameHistory {
  Id id = Isar.autoIncrement;
  String? pgn; // Chess move notation
  DateTime? date;
  bool? isWinner;
}

// To initialize:
// final isar = await Isar.open([GameHistorySchema]);
