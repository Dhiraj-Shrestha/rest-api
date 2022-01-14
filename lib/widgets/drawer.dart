import 'package:flutter/material.dart';
import 'package:rest_api/route/router_constant.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Column(
            children: [
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, bankRoute);
                },
                title: const Text('Bank'),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, invoiceRoute);
                },
                title: const Text('Invoice'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
