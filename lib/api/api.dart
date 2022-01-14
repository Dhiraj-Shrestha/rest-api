import 'dart:convert';

import 'package:rest_api/constant/constant.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/models/bank_model.dart';
import 'package:rest_api/models/invoice.dart';

class CallApi {
  final String baseUrl =
      'https://4b0ef9d2-d78e-4f0b-a400-73aadc0b3202.mock.pstmn.io/api/';

  //------------ get all banks connected---------------------
  Future<BankConnectedModel> getBankConnected() async {
    String fullUrl = baseUrl + 'mobile/bankconnect/connected';

    // ignore: prefer_typing_uninitialized_variables
    var bankModel;
    try {
      var response = await http.get(Uri.parse(fullUrl), headers: setHeaders());
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        bankModel = BankConnectedModel.fromJson(jsonMap);
      }
    } on Exception {
      return bankModel;
    }

    return bankModel;
  }

  Future<InvoiceModel> getInvoiceQuote(String endPoint) async {
    String fullUrl = baseUrl + endPoint;

    // ignore: prefer_typing_uninitialized_variables
    var invoiceModel;
    try {
      var response = await http.get(Uri.parse(fullUrl), headers: setHeaders());
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        invoiceModel = InvoiceModel.fromJson(jsonMap);
      }
    } on Exception {
      return invoiceModel;
    }

    return invoiceModel;
  }

  Future<InvoiceModel> getInvoice() async {
    String fullUrl = baseUrl + 'v2/invoice_list?searchKeyword=eden';

    // ignore: prefer_typing_uninitialized_variables
    var invoiceModel;
    try {
      var response = await http.get(Uri.parse(fullUrl), headers: setHeaders());
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        invoiceModel = InvoiceModel.fromJson(jsonMap);
      }
    } on Exception {
      return invoiceModel;
    }

    return invoiceModel;
  }
}
