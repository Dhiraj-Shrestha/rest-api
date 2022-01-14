import 'package:flutter/material.dart';
import 'package:rest_api/views/bank/bank.dart';
import 'package:rest_api/views/invoice/invoice.dart';
import 'package:rest_api/views/landing_page.dart';

import 'router_constant.dart';

class Routers {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case invoiceRoute:
        return MaterialPageRoute(builder: (_) => const Invoice());
      case bankRoute:
        return MaterialPageRoute(builder: (_) => const BankConnected());
       case homeRoute:
        return MaterialPageRoute(builder: (_) => const LandingPage());

      default:
        return MaterialPageRoute(builder: (_) => const LandingPage());
    }
  }
}
