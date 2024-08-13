import 'package:anju/data/models/models.dart';
import 'package:anju/data/services/consumables_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';

void main() {
  group('Check if all material are Crochet extended', () {
    test('Check yarn', () {
      final yarn = Yarn();
      expect(yarn, isA<Crochet>(),
          reason: 'Need to extend a crochet for organization purpose');
    });
    test('Check Accessories', () {
      final ac = Accessories();
      expect(ac, isA<Crochet>(),
          reason: 'Need to extend a crochet for organization purpose');
    });
    test('Check Filling', () {
      final filling = Filling();
      expect(filling, isA<Crochet>(),
          reason: 'Need to extend a crochet for organization purpose');
    });
    test('Check safety eyes', () {
      final safety = SafetyEyes();
      expect(safety, isA<Crochet>(),
          reason: 'Need to extend a crochet for organization purpose');
    });
    test('Check keychains', () {
      final key = Keychains();
      expect(key, isA<Crochet>(),
          reason: 'Need to extend a crochet for organization purpose');
    });
    test('Check prepacking', () {
      final pre = PrePacking();
      expect(pre, isA<Crochet>(),
          reason: 'Need to extend a crochet for organization purpose');
    });
    test('Check hooks', () {
      final hook = Hooks();
      expect(hook, isA<Crochet>(),
          reason: 'Need to extend a crochet for organization purpose');
    });
  });
  group('Check services', () {
    setUp(() async {
      final service = await ConsumablesService.createInstance();
      expect(service, isA<ConsumablesService>());
      expect(service, isNotNull);
      expect(service.manager, isNotNull);
      expect(service.manager.db, isA<Isar>(),
          reason: 'The main db needs to be Isar');
    });

    test('', () async {
      final service = await ConsumablesService.createInstance();
      service.createOrUpdateBrand(ThreadBrand()..name = 'FIFA');
    });
  });
}
