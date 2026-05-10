import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

class MonadService {
  final String rpcUrl = "https://rpc-devnet.monad.xyz/"; // Use Monad RPC
  late Web3Client client;

  MonadService() {
    client = Web3Client(rpcUrl, Client());
  }

  Future<void> placeBet(String matchId, double amount) async {
    // Logic to call 'createMatch' on your smart contract
    // This will trigger the user's wallet to confirm the $MON transaction
  }
}
Widget _buildBettingOverlay() {
  return Card(
    child: Column(
      children: [
        Text("Wager $MON"),
        TextField(
          decoration: InputDecoration(labelText: "Amount"),
          keyboardType: TextInputType.number,
        ),
        ElevatedButton(
          onPressed: () => monService.placeBet(matchId, 10.0), 
          child: Text("Confirm & Play"),
        ),
      ],
    ),
  );
}
// lib/features/chess/presentation/widgets/wager_bar.dart
class WagerBar extends StatelessWidget {
  final double amount;
  final bool isConnected;

  const WagerBar({required this.amount, required this.isConnected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.deepPurple.withOpacity(0.1),
      child: Row(
        children: [
          Image.asset('assets/icons/mon_logo.png', width: 24),
          SizedBox(width: 8),
          Text(isConnected ? "$amount MON at stake" : "Connect to Wager"),
          Spacer(),
          if (!isConnected) 
            ElevatedButton(onPressed: () => connect(), child: Text("Connect"))
        ],
      ),
    );
  }
}
