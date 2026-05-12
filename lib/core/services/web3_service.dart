import 'package:web3dart/web3dart.dart';
import 'package:http/http.dart';

class Web3Service {
  late Web3Client _client;
  final String rpcUrl = "https://rpc-devnet.monad.xyz";

  void init() {
    _client = Web3Client(rpcUrl, Client());
  }

  // Add methods for contract interaction & $MON balance checks
}
