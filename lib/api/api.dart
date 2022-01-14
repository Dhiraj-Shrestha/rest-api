import 'dart:convert';

import 'package:rest_api/constant/constant.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api/models/bank_model.dart';
import 'package:rest_api/models/invoice.dart';

class CallApi {
  final String baseUrl =
      'https://4b0ef9d2-d78e-4f0b-a400-73aadc0b3202.mock.pstmn.io/api/';

  //------------ get all banks connected---------------------
  Future<BankConnectedModel?> getBankConnected() async {
    String fullUrl = baseUrl + 'mobile/bankconnect/connected';

    var response = await http.get(Uri.parse(fullUrl), headers: setHeaders());
     try {
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);

      BankConnectedModel bankModel = BankConnectedModel.fromJson(jsonMap);
      return bankModel;
    } else {
     return null; 
    }
     }
     on Exception {
      throw "Unable to retrieve data.";
    }
  }

  Future<InvoiceModel?> getInvoiceQuote(String endPoint) async {
    String fullUrl = baseUrl + endPoint;

    try {
      var response = await http.get(Uri.parse(fullUrl), headers: setHeaders());
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        InvoiceModel invoiceModel = InvoiceModel.fromJson(jsonMap);
        return invoiceModel;
      } else {
        return null;
      }
    } on Exception {
      throw "Unable to retrieve data.";
    }
  }

  Future<InvoiceModel?> getInvoice() async {
    String fullUrl = baseUrl + 'v2/invoice_list?searchKeyword=eden';
    
 
    try {
      var response = await http.get(Uri.parse(fullUrl), headers: setHeaders());
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        InvoiceModel invoiceModel = InvoiceModel.fromJson(jsonMap);
        return invoiceModel;
      }
      else{
          return null;
      }
    } on Exception {
      throw "Unable to retrieve data.";
    }
  }
}
