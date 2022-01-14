import 'package:flutter/material.dart';
import 'package:rest_api/views/bank/bank.dart';
import 'package:rest_api/views/invoice/invoice.dart';

import 'router_constant.dart';

class Routers {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case invoiceRoute:
        return MaterialPageRoute(builder: (_) => const Invoice());
      case bankRoute:
        return MaterialPageRoute(builder: (_) => const BankConnected());

      default:
        return MaterialPageRoute(builder: (_) => const Invoice());
    }
  }
}
