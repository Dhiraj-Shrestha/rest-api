import 'package:flutter/material.dart';

import 'package:rest_api/models/invoice.dart';
import 'package:rest_api/views/invoice/invoice_details.dart';

class InvoiceByQuote extends StatefulWidget {
  final Future<InvoiceModel?> invoiceModel;
  const InvoiceByQuote({Key? key, required this.invoiceModel})
      : super(key: key);

  @override
  State<InvoiceByQuote> createState() => _InvoiceByQuoteState();
}

class _InvoiceByQuoteState extends State<InvoiceByQuote> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FutureBuilder<InvoiceModel?>(
            future: widget.invoiceModel,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: snapshot.data!.payload!.data?.length,
                  itemBuilder: (context, index) {
                    var mydata = snapshot.data!.payload!.data![index];
                    return InvoiceDetails(mydata: mydata);
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
        ],
      ),
    );
  }
}
