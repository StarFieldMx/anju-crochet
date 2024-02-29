import 'package:anju/config/themes/anju_colors.dart';
import 'package:anju/config/themes/anju_textstyles.dart';
import 'package:flutter/material.dart';

class BillDatePicker extends StatefulWidget {
  const BillDatePicker({super.key, required this.pickDate});
  final void Function(DateTime, TimeRange) pickDate;

  @override
  State<BillDatePicker> createState() => _BillDatePickerState();
}

class _BillDatePickerState extends State<BillDatePicker> {
  DateTime date = DateTime.now();
  TimeRange range = TimeRange.mensual;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _formatDate(date),
            style: AnjuTextStyles.walletCards,
          ),
          _DateChanger(
            dateValue: (DateTime value, TimeRange data) {
              setState(() {
                date = value;
                range = data;
              });
              widget.pickDate(value, data);
            },
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    final monthNames = [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre'
    ];
    return (range == TimeRange.anual)
        ? '${date.year}'
        : '${monthNames[date.month - 1]} ${date.year}';
  }
}

enum TimeRange { anual, mensual }

class _DateChanger extends StatefulWidget {
  const _DateChanger({required this.dateValue});
  final void Function(DateTime, TimeRange) dateValue;

  @override
  State<_DateChanger> createState() => _DateChangerState();
}

class _DateChangerState extends State<_DateChanger> {
  DateTime timeSelected = DateTime.now();
  TimeRange timeRange = TimeRange.mensual;

  void updateDateChange(int monthsToAdd) {
    timeSelected = (timeRange == TimeRange.anual)
        ? DateTime(timeSelected.year + monthsToAdd)
        : DateTime(timeSelected.year, timeSelected.month + monthsToAdd);
    if (mounted) setState(() {});
    widget.dateValue(timeSelected, timeRange);
  }

  void changeTimeRange(TimeRange? value) {
    if (value == null) return;
    setState(() {
      timeRange = value;
      timeSelected = (value == TimeRange.anual)
          ? DateTime(DateTime.now().year)
          : DateTime.now();
    });
    widget.dateValue(timeSelected, timeRange);
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 40,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => updateDateChange(-1),
            icon: Icon(Icons.arrow_back_ios, color: AnjuColors.secondary),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => updateDateChange(1),
            icon: Icon(Icons.arrow_forward_ios, color: AnjuColors.secondary),
          ),
          DropdownButton<TimeRange>(
            value: timeRange,
            iconEnabledColor: AnjuColors.secondary,
            underline: Container(),
            items: const [
              DropdownMenuItem<TimeRange>(
                value: TimeRange.anual,
                child: Text('Anual'),
              ),
              DropdownMenuItem<TimeRange>(
                value: TimeRange.mensual,
                child: Text('Mensual'),
              ),
            ],
            onChanged: changeTimeRange,
          ),
        ],
      ),
    );
  }
}
