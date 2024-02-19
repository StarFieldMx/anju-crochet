import 'package:flutter/cupertino.dart';

extension ColorExtension on String {
  Color toColor({double opacity = 1.0}) {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    if (hexString.contains('#')) {
      buffer.write(hexString.replaceFirst('#', ''));
    }
    int colorValue = int.parse(buffer.toString(), radix: 16);
    return Color(colorValue).withOpacity(opacity);
  }
}

extension HexExtension on Color {
  String toHex() {
    return '#${value.toRadixString(16).substring(2)}';
  }
}
