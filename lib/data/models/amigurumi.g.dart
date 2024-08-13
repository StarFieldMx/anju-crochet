// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amigurumi.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAmigurumiCollection on Isar {
  IsarCollection<Amigurumi> get amigurumis => this.collection();
}

const AmigurumiSchema = CollectionSchema(
  name: r'Amigurumi',
  id: 3130157821845691135,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'ids': PropertySchema(
      id: 1,
      name: r'ids',
      type: IsarType.longList,
    ),
    r'materialsTypes': PropertySchema(
      id: 2,
      name: r'materialsTypes',
      type: IsarType.stringList,
    ),
    r'name': PropertySchema(
      id: 3,
      name: r'name',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 4,
      name: r'status',
      type: IsarType.byte,
      enumMap: _AmigurumistatusEnumValueMap,
    ),
    r'stock': PropertySchema(
      id: 5,
      name: r'stock',
      type: IsarType.byte,
    ),
    r'type': PropertySchema(
      id: 6,
      name: r'type',
      type: IsarType.byte,
      enumMap: _AmigurumitypeEnumValueMap,
    ),
    r'updatedAt': PropertySchema(
      id: 7,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'workedTime': PropertySchema(
      id: 8,
      name: r'workedTime',
      type: IsarType.int,
    )
  },
  estimateSize: _amigurumiEstimateSize,
  serialize: _amigurumiSerialize,
  deserialize: _amigurumiDeserialize,
  deserializeProp: _amigurumiDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'images': LinkSchema(
      id: -8717212838110513861,
      name: r'images',
      target: r'AnjuImageModel',
      single: false,
    ),
    r'bills': LinkSchema(
      id: 8159034984309213183,
      name: r'bills',
      target: r'Bill',
      single: false,
      linkName: r'amigurumi',
    )
  },
  embeddedSchemas: {},
  getId: _amigurumiGetId,
  getLinks: _amigurumiGetLinks,
  attach: _amigurumiAttach,
  version: '3.1.0+1',
);

int _amigurumiEstimateSize(
  Amigurumi object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.ids.length * 8;
  bytesCount += 3 + object.materialsTypes.length * 3;
  {
    for (var i = 0; i < object.materialsTypes.length; i++) {
      final value = object.materialsTypes[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _amigurumiSerialize(
  Amigurumi object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeLongList(offsets[1], object.ids);
  writer.writeStringList(offsets[2], object.materialsTypes);
  writer.writeString(offsets[3], object.name);
  writer.writeByte(offsets[4], object.status.index);
  writer.writeByte(offsets[5], object.stock);
  writer.writeByte(offsets[6], object.type.index);
  writer.writeDateTime(offsets[7], object.updatedAt);
  writer.writeInt(offsets[8], object.workedTime);
}

Amigurumi _amigurumiDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Amigurumi();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.id = id;
  object.ids = reader.readLongList(offsets[1]) ?? [];
  object.materialsTypes = reader.readStringList(offsets[2]) ?? [];
  object.name = reader.readString(offsets[3]);
  object.status =
      _AmigurumistatusValueEnumMap[reader.readByteOrNull(offsets[4])] ??
          AmigurumiAvailability.disponible;
  object.stock = reader.readByte(offsets[5]);
  object.type = _AmigurumitypeValueEnumMap[reader.readByteOrNull(offsets[6])] ??
      AmigurumiType.especial;
  object.updatedAt = reader.readDateTime(offsets[7]);
  object.workedTime = reader.readInt(offsets[8]);
  return object;
}

P _amigurumiDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLongList(offset) ?? []) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (_AmigurumistatusValueEnumMap[reader.readByteOrNull(offset)] ??
          AmigurumiAvailability.disponible) as P;
    case 5:
      return (reader.readByte(offset)) as P;
    case 6:
      return (_AmigurumitypeValueEnumMap[reader.readByteOrNull(offset)] ??
          AmigurumiType.especial) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readInt(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AmigurumistatusEnumValueMap = {
  'disponible': 0,
  'sobrepedido': 1,
  'proximamente': 2,
};
const _AmigurumistatusValueEnumMap = {
  0: AmigurumiAvailability.disponible,
  1: AmigurumiAvailability.sobrepedido,
  2: AmigurumiAvailability.proximamente,
};
const _AmigurumitypeEnumValueMap = {
  'especial': 0,
  'normal': 1,
};
const _AmigurumitypeValueEnumMap = {
  0: AmigurumiType.especial,
  1: AmigurumiType.normal,
};

Id _amigurumiGetId(Amigurumi object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _amigurumiGetLinks(Amigurumi object) {
  return [object.images, object.bills];
}

void _amigurumiAttach(IsarCollection<dynamic> col, Id id, Amigurumi object) {
  object.id = id;
  object.images
      .attach(col, col.isar.collection<AnjuImageModel>(), r'images', id);
  object.bills.attach(col, col.isar.collection<Bill>(), r'bills', id);
}

extension AmigurumiQueryWhereSort
    on QueryBuilder<Amigurumi, Amigurumi, QWhere> {
  QueryBuilder<Amigurumi, Amigurumi, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AmigurumiQueryWhere
    on QueryBuilder<Amigurumi, Amigurumi, QWhereClause> {
  QueryBuilder<Amigurumi, Amigurumi, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AmigurumiQueryFilter
    on QueryBuilder<Amigurumi, Amigurumi, QFilterCondition> {
  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idsElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ids',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      idsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ids',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ids',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ids',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ids',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ids',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ids',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ids',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      idsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ids',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> idsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ids',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'materialsTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'materialsTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'materialsTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'materialsTypes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'materialsTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'materialsTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'materialsTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'materialsTypes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'materialsTypes',
        value: '',
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'materialsTypes',
        value: '',
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materialsTypes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materialsTypes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materialsTypes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materialsTypes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materialsTypes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsTypesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materialsTypes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusEqualTo(
      AmigurumiAvailability value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusGreaterThan(
    AmigurumiAvailability value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusLessThan(
    AmigurumiAvailability value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusBetween(
    AmigurumiAvailability lower,
    AmigurumiAvailability upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> stockEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> stockGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> stockLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> stockBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stock',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> typeEqualTo(
      AmigurumiType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> typeGreaterThan(
    AmigurumiType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> typeLessThan(
    AmigurumiType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> typeBetween(
    AmigurumiType lower,
    AmigurumiType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> workedTimeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      workedTimeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> workedTimeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workedTime',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> workedTimeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workedTime',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AmigurumiQueryObject
    on QueryBuilder<Amigurumi, Amigurumi, QFilterCondition> {}

extension AmigurumiQueryLinks
    on QueryBuilder<Amigurumi, Amigurumi, QFilterCondition> {
  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> images(
      FilterQuery<AnjuImageModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'images');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> imagesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'images', length, true, length, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> imagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'images', 0, true, 0, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> imagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'images', 0, false, 999999, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      imagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'images', 0, true, length, include);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      imagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'images', length, include, 999999, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> imagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'images', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> bills(
      FilterQuery<Bill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bills');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> billsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, true, length, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> billsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, 0, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> billsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, false, 999999, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> billsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, length, include);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      billsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, include, 999999, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> billsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'bills', lower, includeLower, upper, includeUpper);
    });
  }
}

extension AmigurumiQuerySortBy on QueryBuilder<Amigurumi, Amigurumi, QSortBy> {
  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByWorkedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedTime', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByWorkedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedTime', Sort.desc);
    });
  }
}

extension AmigurumiQuerySortThenBy
    on QueryBuilder<Amigurumi, Amigurumi, QSortThenBy> {
  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByWorkedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedTime', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByWorkedTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedTime', Sort.desc);
    });
  }
}

extension AmigurumiQueryWhereDistinct
    on QueryBuilder<Amigurumi, Amigurumi, QDistinct> {
  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ids');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByMaterialsTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'materialsTypes');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByWorkedTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workedTime');
    });
  }
}

extension AmigurumiQueryProperty
    on QueryBuilder<Amigurumi, Amigurumi, QQueryProperty> {
  QueryBuilder<Amigurumi, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Amigurumi, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Amigurumi, List<int>, QQueryOperations> idsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ids');
    });
  }

  QueryBuilder<Amigurumi, List<String>, QQueryOperations>
      materialsTypesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'materialsTypes');
    });
  }

  QueryBuilder<Amigurumi, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Amigurumi, AmigurumiAvailability, QQueryOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<Amigurumi, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<Amigurumi, AmigurumiType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Amigurumi, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<Amigurumi, int, QQueryOperations> workedTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workedTime');
    });
  }
}
