import 'package:anju/data/models/bill.dart';
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

extension WeekdayAbbreviation on DateTime {
  String get weekdayAbbreviation {
    switch (weekday) {
      case DateTime.monday:
        return 'Lun';
      case DateTime.tuesday:
        return 'Mar';
      case DateTime.wednesday:
        return 'Mié';
      case DateTime.thursday:
        return 'Jue';
      case DateTime.friday:
        return 'Vie';
      case DateTime.saturday:
        return 'Sáb';
      case DateTime.sunday:
        return 'Dom';
      default:
        return '';
    }
  }
}

extension BillsExtensions on List<Bill> {
  List<List<Bill>> get billsByDate {
    Map<DateTime, List<Bill>> billsMap = {};

    for (var bill in this) {
      if (billsMap.containsKey(bill.date)) {
        billsMap[bill.date]!.add(bill);
      } else {
        billsMap[bill.date] = [bill];
      }
    }

    List<DateTime> sortedDates = billsMap.keys.toList()
      ..sort((a, b) => b.compareTo(a));

    List<List<Bill>> result = [];
    for (var date in sortedDates) {
      result.add(billsMap[date]!);
    }

    return result;
  }

  double get totalExpenses {
    return where((bill) => bill is Expenses)
        .map((bill) => bill.money)
        .fold(0, (prev, amount) => prev + amount);
  }

  double get totalIncome {
    return where((bill) => bill is Income)
        .map((bill) => bill.money)
        .fold(0.0, (prev, amount) => prev + amount);
  }

  double get balance {
    return totalIncome - totalExpenses;
  }
}
