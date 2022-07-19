import 'package:flutter/material.dart';

class MyTripCard extends StatelessWidget {
  final String label;

  const MyTripCard({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Image.asset("assets/images/img.jpg"),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(label)
      ],
    );
  }
}
