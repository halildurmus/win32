import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart';

class ThumbstickView extends StatelessWidget {
  final int x;
  final int y;
  const ThumbstickView({Key? key, required this.x, required this.y})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: MediaQuery.of(context).size,
      painter: ThumbstickPainter(x, y),
    );
  }
}

class ThumbstickPainter extends CustomPainter {
  final int x;
  final int y;

  ThumbstickPainter(this.x, this.y);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final minSize = min(size.width, size.height);
    final border = minSize / 10;
    final boxLength = minSize - border * 2;
    final offset = Offset(((x + 32768) / 65535 * boxLength) + border,
        (boxLength - (y + 32768) / 65535 * boxLength) + border);
    final boundingBox = Paint()
      ..color = Colors.blue
      ..strokeWidth = border / 6
      ..style = PaintingStyle.stroke;
    final positionPaint = Paint()
      ..color = Colors.blue
      ..strokeWidth = border / 4
      ..style = PaintingStyle.fill;

    canvas
      ..drawRect(rect, Paint()..color = Colors.white)
      ..drawRect(
          Rect.fromLTWH(border, border, boxLength, boxLength), boundingBox)
      ..drawCircle(offset, border / 4, positionPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
