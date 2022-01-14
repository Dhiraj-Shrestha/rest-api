import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rest_api/constant/constant.dart';
import 'package:rest_api/views/bank/bank.dart';
import 'package:rest_api/views/invoice/invoice.dart';
import 'package:rest_api/widgets/appbar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _cIndex = 0;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  final tabs = [
    const Invoice(),
    const BankConnected(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titleText: _cIndex == 0 ? 'Invoice' : 'Bank',
      ),
      body: tabs[_cIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        currentIndex: _cIndex,
        selectedIconTheme:
            const IconThemeData(color: Colors.blueAccent, size: 20),
        type: BottomNavigationBarType.fixed,
        iconSize: 20.0,
        // selectedItemColor: Colors.deepPurple,
        // unselectedItemColor: Colors.greenAccent,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.book,
              size: 20.0,
            ),
            label: '',
            activeIcon: Icon(
              FontAwesomeIcons.book,
              color: blackColor,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.building,
              size: 20.0,
            ),
            label: '',
            activeIcon: Icon(
              FontAwesomeIcons.building,
              color: blackColor,
              size: 25.0,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _cIndex = index;
          });
        },
      ),
    );
  }
}
