import 'package:cursor_web/mouse_cursor.dart';
import 'package:flutter/material.dart';

class CustomCursorByJS extends StatefulWidget {
  const CustomCursorByJS({Key? key}) : super(key: key);

  @override
  _CustomCursorByJSState createState() => _CustomCursorByJSState();
}

class _CustomCursorByJSState extends State<CustomCursorByJS> {
  @override
  Widget build(BuildContext context) {
    return CustomCursor(
      child: Stack(
        children: [
          Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Test Custom Cursor by js',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
