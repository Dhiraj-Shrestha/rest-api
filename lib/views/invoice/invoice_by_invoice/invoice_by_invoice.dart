import 'package:flutter/material.dart';
import 'package:rest_api/api/api.dart';
import 'package:rest_api/models/invoice.dart';
import 'package:rest_api/views/invoice/invoice_details.dart';

class InvoiceByInvoice extends StatefulWidget {
  const InvoiceByInvoice({Key? key}) : super(key: key);

  @override
  State<InvoiceByInvoice> createState() => _InvoiceByInvoiceState();
}

class _InvoiceByInvoiceState extends State<InvoiceByInvoice> {
  late Future<InvoiceModel?> _invoiceModel;

  @override
  void initState() {
    _invoiceModel = CallApi().getInvoice();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FutureBuilder<InvoiceModel?>(
            future: _invoiceModel,
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
