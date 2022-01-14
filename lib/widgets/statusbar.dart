import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  final String status;

  const StatusBar({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 24,
        width: 100,
        decoration: BoxDecoration(
          color: status == 'ongoing'
              ? Colors.greenAccent
              : const Color(0xFFFFE6E6),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Text(
              status,
              style: const TextStyle(color: Colors.red, fontSize: 13),
            ),
          ),
        ),
      ),
    );
  }
}
