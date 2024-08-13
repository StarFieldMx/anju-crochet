import 'package:anju/data/models/bill.dart';
import 'package:anju/data/models/crochet.dart';
import 'package:anju/data/models/threads/thread_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

extension CrochetTypeExtension on CrochetType {
  String get spanishPlural {
    switch (this) {
      case CrochetType.yarn:
        return 'Hilos';
      case CrochetType.filling:
        return 'Relleno';
      case CrochetType.safetyEyes:
        return 'Ojos de seguridad';
      case CrochetType.accessories:
        return 'Acccesorios';
      case CrochetType.keychains:
        return 'Llaveros';
      case CrochetType.prepacking:
        return 'Empaques';
      case CrochetType.hooks:
        return 'Ganchos';
    }
  }

  String get spanishSingle {
    switch (this) {
      case CrochetType.yarn:
        return 'Hilo';
      case CrochetType.filling:
        return 'Relleno';
      case CrochetType.safetyEyes:
        return 'Ojo de seguridad';
      case CrochetType.accessories:
        return 'Acccesorio';
      case CrochetType.keychains:
        return 'Llavero';
      case CrochetType.prepacking:
        return 'Empaque';
      case CrochetType.hooks:
        return 'Gancho';
    }
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
      if (billsMap.containsKey(bill.dueAt)) {
        billsMap[bill.dueAt]!.add(bill);
      } else {
        billsMap[bill.dueAt] = [bill];
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
    return where((bill) => bill.type == BillingType.expenses)
        .map((bill) => bill.money)
        .fold(0.0, (prev, amount) => prev + amount);
  }

  double get totalIncome {
    return where((bill) => bill.type == BillingType.incomes)
        .map((bill) => bill.money)
        .fold(0.0, (prev, amount) => prev + amount);
  }

  double get totalBill {
    return map((bill) => bill.money).fold(0.0, (prev, amount) => prev + amount);
  }

  List<Bill> get incomeAndExpense {
    return [
      Bill()
        ..money = totalIncome
        ..title = 'Ingreso'
        ..subtitle = 'Mis ingresos'
        ..dueAt = first.dueAt,
      Bill()
        ..money = totalExpenses
        ..title = 'Egreso'
        ..subtitle = 'Mis egresos'
        ..dueAt = first.dueAt
        ..type = BillingType.expenses,
    ];
  }

  List<Bill> get incomes {
    return where((bill) => bill.type == BillingType.incomes).toList();
  }

  List<Bill> get expenses {
    return where((bill) => bill.type == BillingType.expenses).toList();
  }

  double get balance {
    return totalIncome - totalExpenses;
  }
}

extension ThreadColorExtensions on List<ThreadColor> {
  String get colorNamed {
    String name = '';
    if (length == 1) {
      return this[0].name;
    }
    for (var color in this) {
      name += color.name[0];
    }
    return name.toUpperCase();
  }
}
