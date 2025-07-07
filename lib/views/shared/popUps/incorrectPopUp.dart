import 'dart:math';

import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/popUps/plusCoinsminusHeart.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';

class IncorrectPopUp extends StatefulWidget {
  final bool minusHeart;
  const IncorrectPopUp({super.key, required this.minusHeart});

  @override
  _IncorrectPopUpState createState() => _IncorrectPopUpState();
}

class _IncorrectPopUpState extends State<IncorrectPopUp>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutBack,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Dialog(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: width,
                height: height * 0.1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [colormain[600]!, colormain[500]!],
                  ),
                ),
              ),
              SubTitleText(
                text: '${bad[Random().nextInt(bad.length)]}!',
                size: height * 0.13,
                color: Colors.white,
              ),

              if (widget.minusHeart)
                Positioned(
                  top: height * 0.15,
                  right: width * 0.01,
                  child: MinusHeart(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> bad = ['خطأ', 'غلط', 'خاطئ', 'أخطأت'];
