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
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          currentIndex: _cIndex,
          selectedIconTheme:
              const IconThemeData(color: Colors.blueAccent, size: 20),
          type: BottomNavigationBarType.fixed,
          iconSize: 20.0,
          // selectedItemColor: Colors.deepPurple,
          // unselectedItemColor: Colors.greenAccent,

          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                FontAwesomeIcons.book,
                size: 20.0,
              ),
              label: '',
              activeIcon: Container(
                height: 50.0,
                width: 50.0,
                decoration: const BoxDecoration(
                    color: Color(0xffd3f8e7),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Icon(
                  FontAwesomeIcons.book,
                  color: blackColor,
                  size: 25.0,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                FontAwesomeIcons.building,
                size: 20.0,
              ),
              label: '',
              activeIcon: Container(
                height: 50.0,
                width: 50.0,
                decoration: const BoxDecoration(
                    color: Color(0xffd3f8e7),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Icon(
                  FontAwesomeIcons.building,
                  color: blackColor,
                  size: 25.0,
                ),
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              _cIndex = index;
            });
          },
        ),
      ),
    );
  }
}
