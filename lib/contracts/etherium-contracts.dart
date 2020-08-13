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
    ethClient = new Web3Client("http://192.168.0.106:7545", httpClient);
  }

  Future<DeployedContract> loadContract() async {
    String abiCode = await rootBundle.loadString("assets/json/abi.json");
    String contractAddress = "0x859eA3f17DC8eF161b71861dA0f85EBa6e5D2BB1";

    final contract = DeployedContract(ContractAbi.fromJson(abiCode, "MetaCoin"),
        EthereumAddress.fromHex(contractAddress));
    return contract;
  }

  Future<String> submit(String functionName, List<dynamic> args) async {
    EthPrivateKey credentials = EthPrivateKey.fromHex(
        "e13ac636e5977eee0d411f13d77748fdc29b36610ed3fb1e1dcf10751ef0b49e");

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
              future: getBalance("0x49991777d9Db8f17aa23f7f342EcF6D912E2924B"),
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
                  "0xf6760858040Ac75F88737Eb026B900832948181b", 2);
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
