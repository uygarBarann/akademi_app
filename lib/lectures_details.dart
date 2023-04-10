import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LectureDetails extends StatefulWidget {
  final String lectureTitle;
  final Color lectureColor;

  const LectureDetails(
      {Key? key, required this.lectureTitle, required this.lectureColor})
      : super(key: key);

  @override
  _LectureDetailsState createState() => _LectureDetailsState();
}

class _LectureDetailsState extends State<LectureDetails> {

  int _completedLessons = 0;
  int _totalLessons = 7;


  double get _percentage => _completedLessons / _totalLessons;

  void _toggleLesson(bool value) {
    setState(() {
      if (value) {
        _completedLessons++;
      } else {
        _completedLessons--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.lectureColor,
        title: Text(widget.lectureTitle,
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            new CircularPercentIndicator(
              radius: 60.0,
              lineWidth: 13.0,
              animation: true,
              percent: _percentage,
              center: new Text(
                "${(_percentage * 100).toInt()}%",
                style:
                new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),

              circularStrokeCap: CircularStrokeCap.round,
              progressColor: widget.lectureColor,
            ),
            SizedBox(height: 20),
            Text(
              'Tamamlanan modüller: $_completedLessons / $_totalLessons',
              style: TextStyle(
                fontSize: 18,

              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _totalLessons,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(
                      'Modül ${index + 1}',
                      style: TextStyle(
                          color: widget.lectureColor,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    value: index < _completedLessons,
                    onChanged: (value) {
                      _toggleLesson(value!);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*class DonutPainter extends CustomPainter {
  final num? percentage;
  final double? width;
  final Color? color;

  DonutPainter({this.percentage, this.width, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width, size.height) / 2;

    final filledAngle = 2 * math.pi * percentage!;
    final remainingAngle = 2 * math.pi - filledAngle;

    final filledArc = Path()
      ..moveTo(center.dx, center.dy)
      ..arcTo(
        Rect.fromCircle(center: center, radius: radius),
        -math.pi / 2,
        filledAngle,
        false,
      )
      ..close();

    final remainingArc = Path()
      ..moveTo(center.dx, center.dy)
      ..arcTo(
        Rect.fromCircle(center: center, radius: radius),
        filledAngle - math.pi / 2,
        remainingAngle,
        false,
      )
      ..close();

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = width!
      ..color = color!;

    canvas.drawPath(filledArc, paint);
    canvas.drawPath(remainingArc, paint..color = color!.withOpacity(0.3));
  }

  @override
  bool shouldRepaint(DonutPainter oldDelegate) {
    return oldDelegate.percentage != percentage ||
        oldDelegate.width != width ||
        oldDelegate.color != color;
  }
} */
