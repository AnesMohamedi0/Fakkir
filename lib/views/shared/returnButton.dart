import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  final bool home;
  const ReturnButton({super.key, this.home = false});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height * 0.001,
      left: width * 0.001,
      child: IconButton(
        icon: Icon(
          home ? Icons.home : Icons.arrow_back,
          size: height * 0.040,
          color: Colors.black,
          weight: 800,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
