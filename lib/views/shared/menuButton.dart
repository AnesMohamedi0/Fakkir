import 'package:flutter/material.dart';
import 'package:general_knowledge_app/providers/playerprovider.dart';
import 'package:provider/provider.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Positioned(
      top: height * 0.001,
      right: width * 0.001,
      child: IconButton(
        icon: Icon(
          Icons.menu,
          size: height * 0.045,
          color: Colors.black,
          weight: 800,
        ),
        onPressed: () {
          context.read<PlayerProvider>().addCoins(100);
        },
      ),
    );
  }
}
