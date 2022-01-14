import 'package:flutter/material.dart';
import 'package:rest_api/constant/constant.dart';
import 'package:rest_api/models/invoice.dart';
import 'package:rest_api/widgets/statusbar.dart';

class InvoiceDetails extends StatelessWidget {
  final Data mydata;

  const InvoiceDetails({Key? key, required this.mydata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SizedBox(
          child: ListTile(
            leading: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  mydata.customer!.companyName.toString(),
                  maxLines: 1,
                  style: greenSubHeader,
                ),
                Text(
                  mydata.invoiceNumber.toString(),
                ),
                Text(
                  mydata.invoiceTotalAmountVatIncluded.toString() +
                      ' ' +
                      mydata.currencySymbol.toString(),
                  style: greyText,
                ),
              ],
            ),
            trailing: Column(
              children: [
                StatusBar(
                  status: mydata.invoiceType == 'quote'
                      ? mydata.quoteStatus.toString()
                      : mydata.status.toString(),
                ),
                Text(
                  mydata.invoiceIssueDate.toString(),
                  style: greyText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
