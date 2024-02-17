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
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(title, style: AnjuTextStyles.titleScreens),
        ),
        ...list.map(childBuilder).toList(),
      ],
    );
  }
}
