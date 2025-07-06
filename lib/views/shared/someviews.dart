import 'package:flutter/material.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String text;
  final Color? color;
  final int? size;

  const TitleText({super.key, required this.text, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Text(
      text,
      textAlign: TextAlign.center,

      style: GoogleFonts.notoKufiArabic(
        fontSize: size?.toDouble() ?? height * 0.115,
        fontWeight: FontWeight.w600,
        color: color ?? colorTextDark,

        height: 0.95,
      ),
    );
  }
}

class OptionsText extends StatelessWidget {
  final String text;
  final int margin;
  final double? size;
  final Color? color;
  final weight;
  final align;
  final double? letterSpacing;
  final double? wordSpacing;

  const OptionsText({
    super.key,
    required this.text,
    this.margin = 0,
    this.size,
    this.color,
    this.weight = FontWeight.w400,
    this.align = TextAlign.right,
    this.letterSpacing = 0.0,
    this.wordSpacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: margin.toDouble()),
      child: Text(
        text,
        textAlign: align,

        style: TextStyle(
          fontFamily: 'Hudhud',
          fontSize: size ?? height * 0.035,
          color: color ?? colorTextDark,

          fontWeight: weight,
          letterSpacing: letterSpacing,
          wordSpacing: wordSpacing,
        ),
      ),
    );
  }
}

class SubTitleText extends StatelessWidget {
  final String text;
  final int margin;
  final double? size;
  final Color? color;
  final weight;
  final align;

  const SubTitleText({
    super.key,
    required this.text,
    this.margin = 0,
    this.size,
    this.color,
    this.weight = FontWeight.w400,
    this.align = TextAlign.right,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: margin.toDouble()),
      child: Text(
        text,
        textAlign: align,
        style: GoogleFonts.notoKufiArabic(
          fontSize: size ?? height * 0.025,
          color: color ?? colorTextDark,
          fontWeight: weight,
        ),
      ),
    );
  }
}

class HudhudText extends StatelessWidget {
  final String text;
  final int margin;
  final double? size;
  final Color? color;
  final weight;
  final align;

  const HudhudText({
    super.key,
    required this.text,
    this.margin = 0,
    this.size,
    this.color,
    this.weight = FontWeight.w400,
    this.align = TextAlign.right,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: margin.toDouble()),
      child: Text(
        text,
        textAlign: align,
        style: TextStyle(
          fontFamily: 'Hudhud',
          fontSize: size ?? height * 0.025,
          color: color ?? colorTextDark,
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
  final Color? color;
  final weight;
  final align;

  const NumbersText({
    super.key,
    required this.text,
    this.margin = 0,
    this.size,
    this.color,
    this.weight = FontWeight.w400,
    this.align = TextAlign.right,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(right: margin.toDouble()),
      child: Text(
        text,
        textAlign: align,
        style: GoogleFonts.oswald(
          fontSize: size?.toDouble() ?? height * 0.03,
          color: color ?? colorTextDark,
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
  final Color? color;
  const MapNameText({
    super.key,
    required this.text,
    this.margin = 0,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
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
                  color: color ?? colorTextDark,

                  fontWeight: FontWeight.w500,
                ),
              ),
              if (rest.isNotEmpty)
                Row(
                  children: [
                    SizedBox(width: height * 0.005),
                    Text(
                      rest,
                      style: GoogleFonts.notoKufiArabic(
                        fontSize: size ?? height * 0.025,
                        color: color ?? colorTextDark,

                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

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
