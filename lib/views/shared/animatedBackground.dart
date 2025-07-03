import 'package:flutter/material.dart';
import 'package:general_knowledge_app/painters/backgoundpainter.dart';

class AnimatedGradientBackground extends StatefulWidget {
  @override
  _AnimatedGradientBackgroundState createState() =>
      _AnimatedGradientBackgroundState();
}

class _AnimatedGradientBackgroundState extends State<AnimatedGradientBackground>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 12),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
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
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center:
                  Alignment.lerp(
                    Alignment(-0.5, -0.8),
                    Alignment(0.5, 0.8),
                    _animation.value,
                  )!,
              radius: 2.0 + (_animation.value * 0.3),
              colors: [
                // White
                Color.lerp(
                  Colors.white.withOpacity(0.8),
                  Colors.white.withOpacity(0.9),
                  _animation.value,
                )!,
                // Cyan
                Color.lerp(
                  Color.fromARGB(255, 87, 255, 255).withOpacity(0.7), // Cyan
                  Color(0xFF80FFF9).withOpacity(0.6), // Light cyan
                  _animation.value,
                )!,
                // Light cyan
                Color.lerp(
                  Color(0xFFB2FEFA).withOpacity(0.5), // Pale cyan
                  Color.fromARGB(
                    255,
                    255,
                    251,
                    224,
                  ).withOpacity(0.4), // Very light cyan
                  _animation.value,
                )!,
                // Gold accent
                Color.lerp(
                  Color.fromARGB(255, 255, 215, 0).withOpacity(0.25), // Gold
                  Color(0xFFFFF9C4).withOpacity(0.2), // Light gold/yellow
                  _animation.value,
                )!,
              ],
              stops: [0.0, 0.3, 0.65, 1.0],
            ),
          ),
          child: CustomPaint(
            size: Size(width, height),
            painter: BackgroundPainter(),
          ),
        );
      },
    );
  }
}

// Bonus: Custom painter for more complex gradients (Purple, Blue, Cyan only)
class CustomGradientPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Create multiple gradient layers
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // First gradient layer - Purple to Blue
    paint.shader = RadialGradient(
      center: Alignment.topLeft,
      radius: 1.4,
      colors: [
        // White
        Colors.white.withOpacity(0.8),
        // Cyan
        Color.fromARGB(255, 87, 255, 255).withOpacity(0.7),
        // Light cyan
        Color(0xFFB2FEFA).withOpacity(0.5),
        // Gold accent
        Color(0xFFFFD700).withOpacity(0.25),
      ],
      stops: [0.0, 0.3, 0.65, 1.0],
    ).createShader(rect);
    canvas.drawRect(rect, paint);

    // Third layer - Soft cyan overlay
    paint.shader = RadialGradient(
      center: Alignment.bottomRight,
      radius: 0.8,
      colors: [Color(0xFFADE8F4).withOpacity(0.25), Colors.transparent],
    ).createShader(rect);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
