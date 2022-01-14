import 'package:flutter/material.dart';
import 'package:rest_api/api/api.dart';
import 'package:rest_api/constant/constant.dart';
import 'package:rest_api/models/invoice.dart';
import 'package:rest_api/views/invoice/invoice_by_invoice/invoice_by_invoice.dart';
import 'package:rest_api/views/invoice/invoice_by_quote/invoice_by_quote.dart';
import 'package:rest_api/widgets/drawer.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  _InvoiceState createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> with SingleTickerProviderStateMixin {
  int _dropDownValue = 0;
  var myController = TextEditingController();
  late Future<InvoiceModel> _invoiceModel;

  @override
  void initState() {
    _invoiceModel =
        CallApi().getInvoiceQuote('v2/invoice_list?invoice_type=quote');

    super.initState();
  }

  // We need a TabController to control the selected tab programmatically
  late final _tabController = TabController(length: 2, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40.0,
              horizontal: 100.0,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: 30.0,
              color: Colors.grey.shade100,
              child: TabBar(
                onTap: (int i) {
                  myController.text = '';
                  setState(() {});
                },
                controller: _tabController,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), // Creates border
                    color: appPrimaryColor),
                tabs: const [
                  Tab(
                    text: 'Invoice',
                  ),
                  Tab(text: 'Quote'),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade50,
            height: 160,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 1.0,
                    child: TextField(
                      controller: myController,
                      readOnly: _tabController.index == 0 ? true : false,
                      cursorColor: appPrimaryColor,
                      onSubmitted: (value) {
                        myController.text = value;

                        myController.text.isEmpty
                            ? _invoiceModel = CallApi().getInvoiceQuote(
                                'v2/invoice_list?invoice_type=quote')
                            : _invoiceModel = CallApi().getInvoiceQuote(
                                'v2/invoice_list?invoice_type=quote&quote_status=$value&searchKeyword=eden');

                        setState(() {});
                      },
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText:
                              'Go to Quote and enter keyword like reject, seen to filter',
                          hintStyle: greyText),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.menu),
                          Text('Trier par'),
                        ],
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          border: Border.all(
                              color: Colors.black38,
                              width: 1.5), //border of dropdown button
                          borderRadius: BorderRadius.circular(
                              3), //border raiuds of dropdown button
                        ),
                        child: DropdownButton(
                          underline: const SizedBox(),
                          elevation: 0,
                          value: _dropDownValue,
                          items: const [
                            DropdownMenuItem<int>(
                              child: Text("Invoice"),
                              value: 0,
                            ),
                            DropdownMenuItem<int>(
                              child: Text("Quotes"),
                              value: 1,
                            )
                          ],
                          onChanged: (int? value) {
                            setState(() {
                              _dropDownValue = value!;
                              _tabController.index = _dropDownValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                const InvoiceByInvoice(),
                InvoiceByQuote(
                  invoiceModel: _invoiceModel,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
