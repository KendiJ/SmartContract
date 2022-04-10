import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:web3dart/web3dart.dart';

class SmartContract with ChangeNotifier {
  http.Client athleteOne = http.Client();

  void transact() async {
    Web3Client? client = Web3Client("https://speedy-nodes-nyc.moralis.io/a5de3af5ab07ad5518309997/polygon/mumbai/ws", athleteOne);
    String abi = await rootBundle.loadString("assets/abi/smartcontract.json");
    String contractName = "BlackTokenImplementation";
    // 0xd9145CCE52D386f254917e481eB44e9943F39138
    DeployedContract contract = DeployedContract(
      ContractAbi.fromJson(abi, contractName),
      EthereumAddress.fromHex("0xd9145CCE52D386f254917e481eB44e9943F39138"),
    );

    print(contract);

    final transferFrom = contract.function('transfer');
    var credentials = EthPrivateKey.fromHex(
        "874b433922a90f5ebfb331c95e94dcfc429cbbc49bef713c20c197829d389cdd");
   var res = await client.sendTransaction(

      credentials,
      Transaction.callContract(
        contract: contract,
        function: transferFrom,
        maxGas: 3000000,
        parameters: [
          EthereumAddress.fromHex("0x266fedED59399AFC982EEa44724fCa7Ba31C054f"),
          BigInt.from(0.001),
        ],
      ),
      // network id
      chainId: 80001,
    );
    print(res);
  }
}
