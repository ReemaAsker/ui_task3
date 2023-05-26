import 'package:arrow_path/arrow_path.dart';
import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Arrow Path Example',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: ExampleApp(),
      );
}

class ExampleApp extends StatefulWidget {
  ExampleApp({Key? key}) : super(key: key);

  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Arrow Path Example'),
        ),
        body: SingleChildScrollView(
          child: ClipRect(
            child: CustomPaint(
              size: Size(MediaQuery.of(context).size.width, 700),
              painter: ArrowPainter(),
            ),
          ),
        ),
      );
}

class ArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// The arrows usually looks better with rounded caps.
    final Paint paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 3.0;

    /// Draw a single arrow.
    {
      Path path = Path();
      path.moveTo(size.width * 0.65, 530);
      path.relativeCubicTo(0, 0, size.width * 0.2, 50, size.width * 0.25, -60);
      path = ArrowPath.make(path: path);
      canvas.drawPath(
        dashPath(
          path,
          dashArray: CircularIntervalList<double>(<double>[15.0, 10]),
        ),
        paint,
      );
      // canvas.drawPath(path, paint..color = Colors.blue);

      final TextSpan textSpan = TextSpan(
        text: 'Like',
        style: TextStyle(color: Colors.blue),
      );
      final TextPainter textPainter = TextPainter(
        text: textSpan,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout(minWidth: size.width);
      textPainter.paint(canvas, Offset(size.width * 0.3, 570));
    }

    {
      Path path = Path();
      path.moveTo(size.width * 0.4, 530);
      path.relativeCubicTo(
          0, 0, size.width * -0.2, 50, size.width * -0.25, -60);
      path = ArrowPath.make(path: path);
      canvas.drawPath(
        dashPath(
          path,
          dashArray: CircularIntervalList<double>(<double>[15.0, 10]),
        ),
        paint,
      );

      final TextSpan textSpan = TextSpan(
        text: 'Dislike',
        style: TextStyle(color: Colors.blue),
      );
      final TextPainter textPainter = TextPainter(
        text: textSpan,
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );
      textPainter.layout(minWidth: size.width);
      textPainter.paint(canvas, Offset(size.width * -0.3, 570));
    }

    /// Adjusted
    // {
    //   Path path = Path();
    //   path.moveTo(size.width * 0.1, 490);
    //   path.relativeCubicTo(0, 0, size.width * 0.3, 50, size.width * 0.25, 75);
    //   path = ArrowPath.make(path: path, isAdjusted: true);
    //   canvas.drawPath(path, paint..color = Colors.blue);

    //   final TextSpan textSpan = TextSpan(
    //     text: 'Adjusted',
    //     style: TextStyle(color: Colors.blue),
    //   );
    //   final TextPainter textPainter = TextPainter(
    //     text: textSpan,
    //     textAlign: TextAlign.left,
    //     textDirection: TextDirection.ltr,
    //   );
    //   textPainter.layout();
    //   textPainter.paint(canvas, Offset(size.width * 0.2, 472));
    // }

    // /// Draw a double sided arrow.
    // {
    //   Path path = Path();
    //   path.moveTo(size.width * 0.25, 120);
    //   path.relativeCubicTo(0, 0, size.width * 0.25, 50, size.width * 0.5, 0);
    //   path = ArrowPath.make(path: path, isDoubleSided: true);
    //   canvas.drawPath(path, paint..color = Colors.cyan);

    //   final TextSpan textSpan = TextSpan(
    //     text: 'Double sided arrow',
    //     style: TextStyle(color: Colors.cyan),
    //   );
    //   final TextPainter textPainter = TextPainter(
    //     text: textSpan,
    //     textAlign: TextAlign.center,
    //     textDirection: TextDirection.ltr,
    //   );
    //   textPainter.layout(minWidth: size.width);
    //   textPainter.paint(canvas, Offset(0, 96));
    // }

    // /// Use complex path.
    // {
    //   Path path = Path();
    //   path.moveTo(size.width * 0.25, 180);
    //   path.relativeCubicTo(0, 0, size.width * 0.25, 50, size.width * 0.5, 50);
    //   path.relativeCubicTo(0, 0, -size.width * 0.25, 0, -size.width * 0.5, 50);
    //   path.relativeCubicTo(
    //       0, 0, size.width * 0.125, 10, size.width * 0.25, -10);
    //   path = ArrowPath.make(path: path, isDoubleSided: true);
    //   canvas.drawPath(path, paint..color = Colors.blue);

    //   final TextSpan textSpan = TextSpan(
    //     text: 'Complex path',
    //     style: TextStyle(color: Colors.blue),
    //   );
    //   final TextPainter textPainter = TextPainter(
    //     text: textSpan,
    //     textAlign: TextAlign.center,
    //     textDirection: TextDirection.ltr,
    //   );
    //   textPainter.layout(minWidth: size.width);
    //   textPainter.paint(canvas, Offset(0, 168));
    // }

    // /// Draw several arrows on the same path.
    // {
    //   Path path = Path();
    //   path.moveTo(size.width * 0.25, 328);
    //   path.relativeCubicTo(0, 0, size.width * 0.25, 50, size.width * 0.5, 50);
    //   path = ArrowPath.make(path: path);
    //   path.relativeCubicTo(0, 0, -size.width * 0.25, 0, -size.width * 0.5, 50);
    //   path = ArrowPath.make(path: path);
    //   Path subPath = Path();
    //   subPath.moveTo(size.width * 0.375, 328 + 100);
    //   subPath.relativeCubicTo(
    //       0, 0, size.width * 0.125, 10, size.width * 0.25, -10);
    //   subPath = ArrowPath.make(path: subPath, isDoubleSided: true);
    //   path.addPath(subPath, Offset.zero);
    //   canvas.drawPath(path, paint..color = Colors.cyan);

    //   final TextSpan textSpan = TextSpan(
    //     text: 'Several arrows on the same path',
    //     style: TextStyle(color: Colors.cyan),
    //   );
    //   final TextPainter textPainter = TextPainter(
    //     text: textSpan,
    //     textAlign: TextAlign.center,
    //     textDirection: TextDirection.ltr,
    //   );
    //   textPainter.layout(minWidth: size.width);
    //   textPainter.paint(canvas, Offset(0, 305));
    // }

    /// Non adjusted.
    // {
    //   Path path = Path();
    //   path.moveTo(size.width * 0.6, 490);
    //   path.relativeCubicTo(0, 0, size.width * 0.3, 50, size.width * 0.25, 75);
    //   path = ArrowPath.make(path: path, isAdjusted: false);
    //   canvas.drawPath(path, paint..color = Colors.blue);

    //   final TextSpan textSpan = TextSpan(
    //     text: 'Non adjusted',
    //     style: TextStyle(color: Colors.blue),
    //   );
    //   final TextPainter textPainter = TextPainter(
    //     text: textSpan,
    //     textAlign: TextAlign.left,
    //     textDirection: TextDirection.ltr,
    //   );
    //   textPainter.layout();
    //   textPainter.paint(canvas, Offset(size.width * 0.65, 472));
    // }
  }

  @override
  bool shouldRepaint(ArrowPainter oldDelegate) => false;

  //////////////////////
  // @override
  // void paint(Canvas canvas, Size size) {
  //   var paint = Paint();

  //   paint.color = Colors.lightBlue;
  //   paint.style = PaintingStyle.stroke;
  //   paint.strokeWidth = 3;

  //   var startPoint = Offset(50, size.height / 2); //0, size.height / 2
  //   var controlPoint1 = Offset(size.width / 4, size.height / 3); //
  //   var controlPoint2 = Offset(3 * size.width / 4, size.height / 3); //
  //   var endPoint = Offset(200, 100); //size.width,size.height / 2

  //   var path = Path();
  //   path.moveTo(startPoint.dx, startPoint.dy);
  //   path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
  //       controlPoint2.dy, endPoint.dx, endPoint.dy);

  //   canvas.drawPath(
  //     dashPath(
  //       path,
  //       dashArray: CircularIntervalList<double>(<double>[15.0, 10]),
  //     ),
  //     paint,
  //   );
  // }

  // @override
  // bool shouldRepaint(CustomPainter oldDelegate) {
  //   return false;
  // }
}
