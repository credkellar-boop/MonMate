import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

class ChessPage extends StatefulWidget {
  const ChessPage({super.key});

  @override
  State<ChessPage> createState() => _ChessPageState();
}

class _ChessPageState extends State<ChessPage> {
  ChessBoardController controller = ChessBoardController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MonMate Chess'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.resetBoard(),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChessBoard(
                  controller: controller,
                  boardColor: BoardColor.brown,
                  boardOrientation: PlayerColor.white,
                  onMove: () {
                    // Logic for when a move is made (e.g., play sound)
                    print("Move made: ${controller.getFen()}");
                  },
                ),
              ),
              const SizedBox(height: 20),
              _buildControlPanel(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildControlPanel() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
            onPressed: () => controller.undoMove(),
            icon: const Icon(Icons.undo),
            label: const Text("Undo"),
          ),
          // Future: Add a "Hint" or "Analyze" button here
        ],
      ),
    );
  }
}
