import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:flutter/material.dart';

class AnjuItemListViewer<T> extends StatelessWidget {
  const AnjuItemListViewer({
    Key? key,
    required this.list,
    required this.title,
    required this.childBuilder,
  }) : super(key: key);

  final List<T> list;
  final String title;
  final Widget Function(T) childBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      children: [
        Text(title, style: AnjuTextStyles.titleScreens),
        const SizedBox(height: 20),
        ...list.map((item) {
          final childWidget = childBuilder(item);
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: childWidget,
          );
        }).toList(),
        const SizedBox(height: 75.0),
      ],
    );
  }
}
