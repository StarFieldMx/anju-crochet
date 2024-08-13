import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:anju/data/services/anju_alerts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnjuAddColor extends StatelessWidget {
  const AnjuAddColor({
    super.key,
    required this.onSelectCOlor,
  });

  final void Function(ThreadColor?) onSelectCOlor;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () async {
        final color = await AnjuAlerts.openColorSelector();
        onSelectCOlor(color);
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AnjuColors.primary,
            child: const Icon(
              CupertinoIcons.add,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          const Text('Agregar un color')
        ],
      ),
    );
  }
}
