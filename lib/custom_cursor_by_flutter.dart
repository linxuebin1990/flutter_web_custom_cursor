import 'package:cursor_web/mouse_cursor.dart';
import 'package:flutter/material.dart';

class CustomCursorByFlutter extends StatefulWidget {
  const CustomCursorByFlutter({Key? key}) : super(key: key);

  @override
  _CustomCursorByFlutterState createState() => _CustomCursorByFlutterState();
}

class _CustomCursorByFlutterState extends State<CustomCursorByFlutter> {
  Offset? pointer;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.none,
      onHover: (eve) {
        setState(() {
          pointer = eve.position;
        });
      },
      child: Stack(
        children: [Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Test Custom Cursor by Flutter',
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
          ),
        ),
        pointer != null
            ? Positioned(
            left: pointer?.dx,
            top: pointer?.dy,
            child: Image.asset('images/costum_cursor.png'))
            : Container(),
        ],
      ),
    );
  }
}
