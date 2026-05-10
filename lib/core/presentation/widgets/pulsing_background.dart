import 'package:flutter/material.dart';
import 'dart:math' as math;

class PulsingBackground extends StatefulWidget {
  final Widget child;
  const PulsingBackground({super.key, required this.child});

  @override
  State<PulsingBackground> createState() => _PulsingBackgroundState();
}

class _PulsingBackgroundState extends State<PulsingBackground> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4), // Matches the slow pulse in your video
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return CustomPaint(
                painter: PurplePulsePainter(pulseValue: _controller.value),
                size: Size.infinite,
              );
            },
          ),
          widget.child, // Your Chess Board or UI goes here
        ],
      ),
    );
  }
}

class PurplePulsePainter extends CustomPainter {
  final double pulseValue;
  PurplePulsePainter({required this.pulseValue});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..strokeWidth = 4.0;
    const int barCount = 40;
    final double spacing = size.width / barCount;

    // Draw the vertical purple bars
    for (int i = 0; i < barCount; i++) {
      double opacity = 0.2 + (0.4 * pulseValue); // Animating brightness
      paint.color = const Color(0xFF6B4DFF).withOpacity(opacity);
      
      double x = i * spacing;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }

    // Add the central vignette (the dark circle in your video)
    final Rect rect = Offset.zero & size;
    final Gradient gradient = RadialGradient(
      colors: [
        Colors.transparent,
        Colors.black.withOpacity(0.8),
        Colors.black,
      ],
      stops: const [0.0, 0.7, 1.0],
      radius: 1.2 - (0.2 * pulseValue), // The vignette "breathes"
    );

    final Paint vignettePaint = Paint()..shader = gradient.createShader(rect);
    canvas.drawRect(rect, vignettePaint);
  }

  @override
  bool shouldRepaint(PurplePulsePainter oldDelegate) => true;
}
