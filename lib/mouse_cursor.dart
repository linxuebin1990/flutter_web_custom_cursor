import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:universal_html/html.dart' as html;

class CustomCursor extends MouseRegion {
  static final appContainer =
      html.window.document.getElementsByTagName('flt-glass-pane');

  CustomCursor({required Widget child, String cursorStyle = 'pointer'})
      : super(
            onHover: (PointerHoverEvent evt) {
              if (kIsWeb) {
                for (html.Node node in appContainer) {
                  if (node is html.Element) {
                    node.style.setProperty('cursor',
                        'url(\'./assets/images/costum_cursor.png\'), auto');
                  }
                }
              }
            },
            child: child);
}
