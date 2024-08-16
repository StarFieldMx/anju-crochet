import 'dart:async';

import 'package:art_sweetalert/art_sweetalert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_debouncer/flutter_debouncer.dart';
import 'package:numberpicker/numberpicker.dart';

Future<Duration?> showDurationPicker(
  BuildContext context, {
  bool hasSeconds = false,
}) async {
  Duration? selectedDuration;

  final ArtDialogResponse? response = await ArtSweetAlert.show(
    context: context,
    artDialogArgs: ArtDialogArgs(
      dialogDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      dialogAlignment: Alignment.topLeft,
      customColumns: [
        Container(
          alignment: Alignment.bottomLeft,
          child: const Text(
            'Time duration',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Divider(),
        Center(
          child: _DurationPicker(
            hasSeconds: hasSeconds,
            pickValue: (duration) {
              selectedDuration = duration;
            },
          ),
        ),
        const Divider(),
      ],
      confirmButtonText: 'Listo',
    ),
  );
  if (response != null && response.isTapConfirmButton) {
    return selectedDuration;
  }
  return null;
}

class _DurationPicker extends StatefulWidget {
  const _DurationPicker({this.hasSeconds = false, this.pickValue});
  final bool hasSeconds;
  final void Function(Duration?)? pickValue;

  @override
  State<_DurationPicker> createState() => _DurationPickerState();
}

class _DurationPickerState extends State<_DurationPicker> {
  int hours = 0;
  int minutes = 0;
  int seconds = 0;

  Debouncer? _debouncer;

  void _notifyPickValue() {
    if (widget.pickValue != null) {
      const duration = Duration(milliseconds: 800);
      _debouncer?.debounce(
        duration: duration,
        onDebounce: () {
          widget.pickValue!(
              Duration(hours: hours, minutes: minutes, seconds: seconds));
        },
      );
    }
  }

  void _handleHours(int value) {
    setState(() {
      hours = value;
    });
    _notifyPickValue();
  }

  void _handleMinutes(int value) {
    setState(() {
      minutes = value;
    });

    _notifyPickValue();
  }

  void _handleSeconds(int value) {
    setState(() {
      seconds = value;
    });
    _notifyPickValue();
  }

  @override
  void initState() {
    _debouncer = Debouncer();
    super.initState();
  }

  @override
  void dispose() {
    _debouncer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Text('Hours'),
            NumberPicker(
              value: hours,
              minValue: 0,
              maxValue: 200,
              onChanged: _handleHours,
            ),
          ],
        ),
        Column(
          children: [
            const Text('Minutes'),
            NumberPicker(
              value: minutes,
              minValue: 0,
              maxValue: 59,
              onChanged: _handleMinutes,
            ),
          ],
        ),
        if (widget.hasSeconds)
          Column(
            children: [
              const Text('Seconds'),
              NumberPicker(
                value: seconds,
                minValue: 0,
                maxValue: 59,
                onChanged: _handleSeconds,
              ),
            ],
          ),
      ],
    );
  }
}
