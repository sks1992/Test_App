import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade600,
              blurRadius: 4,
              spreadRadius: 2),
        ],
      ),
      child: Image.asset(
        "assets/images/one.png",
        fit: BoxFit.contain,
      ),
    );
  }
}
