import 'package:flutter/material.dart';
import 'package:rest_api/api/api.dart';
import 'package:rest_api/models/bank_model.dart';

import 'package:rest_api/views/bank/bank_ui.dart';

class BankConnected extends StatefulWidget {
  const BankConnected({Key? key}) : super(key: key);

  @override
  State<BankConnected> createState() => _BankConnectedState();
}

class _BankConnectedState extends State<BankConnected> {
  // //get bank data
  late Future<BankConnectedModel?> _bankModel;
  @override
  void initState() {
    _bankModel = CallApi().getBankConnected();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 82,
            child: FutureBuilder<BankConnectedModel?>(
              future: _bankModel,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: snapshot.data!.payload?.length,
                    itemBuilder: (context, index) {
                      var mydata = snapshot.data!.payload![index];

                      return BankUI(mydata: mydata);
                    },
                  );
                } else if (snapshot.hasError) {
                  return const Text('Cannot load at this time');
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
