import 'package:flutter/material.dart';
import 'package:rest_api/constant/constant.dart';
import 'package:rest_api/route/router.dart';
import 'package:rest_api/route/router_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: appPrimaryColor,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: appPrimaryColor),
      ),
      onGenerateRoute: Routers.onGenerateRoute,
      initialRoute: bankRoute,
    );
  }
}
