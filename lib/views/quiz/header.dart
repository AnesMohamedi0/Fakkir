import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/quizpainter.dart';
import 'package:general_knowledge_app/painters/scrollCasePainter.dart'
    show ScrollCase;
import 'package:general_knowledge_app/providers/quizProvider.dart';
import 'package:general_knowledge_app/views/shared/colors.dart';
import 'package:general_knowledge_app/views/shared/someviews.dart';
import 'package:provider/provider.dart';

class QuizHeader extends StatefulWidget {
  const QuizHeader({super.key});

  @override
  State<QuizHeader> createState() => _QuizHeaderState();
}

class _QuizHeaderState extends State<QuizHeader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _opacityAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        /// === REVEALING THE CENTER MAP ===
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: width * 0.5),
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInCubic,
          builder: (context, value, child) {
            final double fullWidth = width;
            final double visibleWidth = value * 2;

            return Positioned(
              top:
                  context.read<QuizProvider>().quiz!.imagePath == null
                      ? height * 0.105
                      : height * 0.06,
              child: SizedBox(
                width: width,
                child: Center(
                  child: ClipRect(
                    child: Align(
                      alignment: Alignment.center,
                      widthFactor: visibleWidth / fullWidth,
                      child: CustomPaint(
                        size: Size(
                          fullWidth,
                          context.read<QuizProvider>().quiz!.imagePath == null
                              ? height * 0.4
                              : height * 0.5,
                        ),
                        painter: QuizPainter(),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),

        /// === LEFT/RIGHT SCROLL CASES ===
        TweenAnimationBuilder<double>(
          tween: Tween(begin: width * 0.39, end: width * -0.09),
          duration: const Duration(milliseconds: 700),
          curve: Curves.easeInCubic,
          onEnd: () {
            _controller.forward();
          },
          builder: (context, value, child) {
            return Stack(
              children: [
                Positioned(
                  top:
                      context.read<QuizProvider>().quiz!.imagePath == null
                          ? height * 0.155
                          : height * 0.123,
                  right: value,
                  child: CustomPaint(
                    size: Size(
                      width * 0.15,
                      context.read<QuizProvider>().quiz!.imagePath == null
                          ? height * 0.3
                          : height * 0.375,
                    ),
                    painter: ScrollCase(right: true),
                  ),
                ),
                Positioned(
                  top:
                      context.read<QuizProvider>().quiz!.imagePath == null
                          ? height * 0.155
                          : height * 0.123,
                  left: value,
                  child: CustomPaint(
                    size: Size(
                      width * 0.15,
                      context.read<QuizProvider>().quiz!.imagePath == null
                          ? height * 0.3
                          : height * 0.375,
                    ),
                    painter: ScrollCase(right: false),
                  ),
                ),
              ],
            );
          },
        ),

        /// ✅ THE ONLY PLACE WITH ANIMATION BUILDER
        Positioned(
          top: height * 0.161,
          child: AnimatedBuilder(
            animation: _opacityAnimation,
            builder: (context, child) {
              return Opacity(opacity: _opacityAnimation.value, child: child);
            },
            child: Consumer<QuizProvider>(
              builder: (context, provider, _) {
                if (provider.level == null || provider.map == null) {
                  return Container();
                }

                return SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: height * 0.02,
                      horizontal: width * 0.06,
                    ),
                    width: width,
                    height: height * 0.295,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SubTitleText(
                          text: provider.quiz!.question,
                          weight: FontWeight.w500,
                          align: TextAlign.center,
                          color: colorText,
                        ),
                        if (provider.quiz!.imagePath != null)
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              border: Border.all(color: color1, width: 2.5),
                            ),
                            width: width * 0.6,
                            height: height * 0.15,
                            child: Image.asset(
                              provider.quiz!.imagePath!,
                              fit: BoxFit.cover,
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),

        /// === QUIZ CONTENT ===
      ],
    );
  }
}
