import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/constant/constant.dart';
import 'package:rest_api/models/payload_model.dart';

class BankUI extends StatelessWidget {
  final Payload mydata;

  const BankUI({Key? key, required this.mydata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black26,
      elevation: 0.5,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ExpandablePanel(
          theme: const ExpandableThemeData(
            iconColor: Colors.grey,
            expandIcon: Icons.arrow_left,
          ),
          header: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mydata.fullName.toString(),
                style: greenHeader,
              ),
              Text(
                mydata.accounts!.length.toString() + ' accounts connected',
                style: blackHeader,
              ),
              Text(
                'Last Logged in: ' + mydata.createdAt.toString(),
                style: greyText,
              ),
            ],
          ),
          collapsed: const Text(
            '',
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          expanded: ListView.builder(
              shrinkWrap: true,
              itemCount: mydata.accounts!.length,
              itemBuilder: (context, index) {
                var accountData = mydata.accounts![index];
                return Card(
                  elevation: 0.1,
                  child: ListTile(
                    title: Text(accountData.accountName.toString()),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          accountData.iban.toString(),
                        ),
                        Text(
                          'Balance: ' + accountData.balance.toString() + ' EUR',
                          style: greyText,
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
    // return Text(
    //   ,
    //   maxLines: 3,
    // );
  }
}
