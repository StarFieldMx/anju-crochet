import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:flutter/material.dart';

class AnjuItemListViewer<T> extends StatelessWidget {
  const AnjuItemListViewer({
    super.key,
    required this.list,
    required this.title,
    required this.childBuilder,
    this.hasPadding = false,
  });

  final List<T> list;
  final String title;
  final Widget Function(T) childBuilder;
  final bool hasPadding;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(
          horizontal: hasPadding ? 20.0 : 0.0, vertical: 10),
      children: [
        Padding(
            padding: EdgeInsets.only(left: !hasPadding ? 12.5 : 0.0),
            child: Text(title, style: AnjuTextStyles.titleScreens)),
        const SizedBox(height: 20),
        ...list.map((item) {
          final childWidget = childBuilder(item);
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: childWidget,
          );
        }),
        const SizedBox(height: 75.0),
      ],
    );
  }
}
