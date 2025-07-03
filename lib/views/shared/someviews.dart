import 'package:flutter/material.dart';
import 'package:general_knowledge_app/main.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String text;
  final int? size;

  const TitleText({super.key, required this.text, this.size});

  @override
  Widget build(BuildContext context) {
    double height = ScreenConfig.height(context);
    return Text(
      text,
      style: GoogleFonts.notoKufiArabic(
        fontSize: size?.toDouble() ?? height * 0.105,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    );
  }
}

class SubTitleText extends StatelessWidget {
  final String text;
  final int margin;
  final double? size;
  final Color color;
  final weight;
  final align;

  const SubTitleText({
    super.key,
    required this.text,
    this.margin = 0,
    this.size,
    this.color = Colors.black,
    this.weight = FontWeight.w400,
    this.align = TextAlign.right,
  });

  @override
  Widget build(BuildContext context) {
    double height = ScreenConfig.height(context);
    return Container(
      margin: EdgeInsets.only(right: margin.toDouble()),
      child: Text(
        text,
        textAlign: align,
        style: GoogleFonts.notoKufiArabic(
          fontSize: size ?? height * 0.025,
          color: color,
          fontWeight: weight,
        ),
      ),
    );
  }
}

class NumbersText extends StatelessWidget {
  final String text;
  final int margin;
  final double? size;
  final Color color;
  final weight;
  final align;

  const NumbersText({
    super.key,
    required this.text,
    this.margin = 0,
    this.size,
    this.color = Colors.black,
    this.weight = FontWeight.w400,
    this.align = TextAlign.right,
  });

  @override
  Widget build(BuildContext context) {
    double height = ScreenConfig.height(context);
    return Container(
      margin: EdgeInsets.only(right: margin.toDouble()),
      child: Text(
        text,
        textAlign: align,
        style: GoogleFonts.oswald(
          fontSize: size?.toDouble() ?? height * 0.03,
          color: color,
          fontWeight: weight,
        ),
      ),
    );
  }
}

class MapNameText extends StatelessWidget {
  final String text;
  final int margin;
  final double? size;
  final Color color;
  const MapNameText({
    super.key,
    required this.text,
    this.margin = 0,
    this.size,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    double height = ScreenConfig.height(context);
    return Container(
      margin: EdgeInsets.only(right: margin.toDouble()),
      child: Builder(
        builder: (context) {
          final words = text.split(' ');
          if (words.isEmpty) {
            return Text('');
          }
          final firstWord = words.first;
          final rest = words.length > 1 ? words.sublist(1).join(' ') : '';
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstWord,
                style: GoogleFonts.notoKufiArabic(
                  fontSize: size ?? height * 0.025,
                  color: color,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (rest.isNotEmpty)
                Text(
                  rest,
                  style: GoogleFonts.notoKufiArabic(
                    fontSize: size ?? height * 0.025,
                    color: color,
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class ButtonsHome extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonsHome({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double width = ScreenConfig.width(context);
    double height = ScreenConfig.height(context);

    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: width * 0.75,
        height: height * 0.06,
        padding: EdgeInsets.only(right: width * 0.02, top: height * 0.002),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Text(
          text,
          style: GoogleFonts.notoKufiArabic(
            fontSize: height * 0.033,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class TextFieldHome extends StatelessWidget {
  final TextEditingController controller;

  const TextFieldHome({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    double width = ScreenConfig.width(context);
    double height = ScreenConfig.height(context);

    return Container(
      width: width * 0.75,
      height: height * 0.06,

      margin: EdgeInsets.only(right: width * 0.03, bottom: height * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.right,
        cursorHeight: height * 0.04,
        cursorColor: Colors.black,
        style: GoogleFonts.notoKufiArabic(
          fontSize: 33,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(right: width * 0.02),
        ),
      ),
    );
  }
}
