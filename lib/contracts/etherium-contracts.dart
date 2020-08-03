import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:web3dart/web3dart.dart';

class Contracts extends StatefulWidget {
  @override
  _ContractsState createState() => _ContractsState();
}

class _ContractsState extends State<Contracts> {
  Client httpClient;
  Web3Client ethClient;

  String lastTransactionHash;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    httpClient = new Client();
    ethClient = new Web3Client("http://10.0.2.2:7545", httpClient);
  }

  Future<DeployedContract> loadContract() async {
    String abiCode = await rootBundle.loadString("assets/json/abi.json");
    String contractAddress = "0x8532C285CcC10a96d1a06e1335cf83b5a5d7678B";

    final contract = DeployedContract(ContractAbi.fromJson(abiCode, "MetaCoin"),
        EthereumAddress.fromHex(contractAddress));
    return contract;
  }

  Future<String> submit(String functionName, List<dynamic> args) async {
    EthPrivateKey credentials = EthPrivateKey.fromHex(
        "b01e4cb5d59797d08b040d98e03d091655ad2513b96ddaad5e144f2d93827006");

    DeployedContract contract = await loadContract();

    final ethFunction = contract.function(functionName);

    var result = await ethClient.sendTransaction(
      credentials,
      Transaction.callContract(
        contract: contract,
        function: ethFunction,
        parameters: args,
      ),
    );
    return result;
  }

  Future<List<dynamic>> query(String functionName, List<dynamic> args) async {
    final contract = await loadContract();
    final ethFunction = contract.function(functionName);
    final data = await ethClient.call(
        contract: contract, function: ethFunction, params: args);
    return data;
  }

  Future<String> sendCoind(String targetAddressHex, int amount) async {
    EthereumAddress address = EthereumAddress.fromHex(targetAddressHex);

    var bigAmount = BigInt.from(amount);

    var response = await submit("sendCoin", [address, bigAmount]);

    return response;
  }

  Future<List<dynamic>> getBalance(String targetAddressHex) async {
    EthereumAddress address = EthereumAddress.fromHex(targetAddressHex);
    List<dynamic> result = await query("getBalance", [address]);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.red,
            height: 100,
            child: FutureBuilder(
              future: getBalance("0x6E8CdB55CDE9c7C034e5bE5180E0089e5B79baFA"),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(
                      'You have this many MetaCoin ${snapshot.data[0]}');
                } else
                  return Text('Loading...');
              },
            ),
          ),
          RaisedButton(
            child: Text("Send some MetaCoins"),
            onPressed: () async {
              var result = await sendCoind(
                  "0x6E8CdB55CDE9c7C034e5bE5180E0089e5B79baFA", 2);
              setState(() {
                lastTransactionHash = result;
              });
            },
          ),
          Text("Last transaction hash: $lastTransactionHash")
        ],
      ),
    );
  }
}
