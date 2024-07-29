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
    r'materials': PropertySchema(
      id: 1,
      name: r'materials',
      type: IsarType.objectList,
      target: r'MaterialSnapshot',
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'priceMaterial': PropertySchema(
      id: 3,
      name: r'priceMaterial',
      type: IsarType.double,
    ),
    r'status': PropertySchema(
      id: 4,
      name: r'status',
      type: IsarType.string,
      enumMap: _AmigurumistatusEnumValueMap,
    ),
    r'total': PropertySchema(
      id: 5,
      name: r'total',
      type: IsarType.double,
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
    r'workedHours': PropertySchema(
      id: 8,
      name: r'workedHours',
      type: IsarType.long,
    ),
    r'workedMinutes': PropertySchema(
      id: 9,
      name: r'workedMinutes',
      type: IsarType.long,
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
      target: r'AmigurumiImage',
      single: false,
    ),
    r'pricesWork': LinkSchema(
      id: -8484001858448947399,
      name: r'pricesWork',
      target: r'Work',
      single: false,
    )
  },
  embeddedSchemas: {r'MaterialSnapshot': MaterialSnapshotSchema},
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
  bytesCount += 3 + object.materials.length * 3;
  {
    final offsets = allOffsets[MaterialSnapshot]!;
    for (var i = 0; i < object.materials.length; i++) {
      final value = object.materials[i];
      bytesCount +=
          MaterialSnapshotSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.status.name.length * 3;
  return bytesCount;
}

void _amigurumiSerialize(
  Amigurumi object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeObjectList<MaterialSnapshot>(
    offsets[1],
    allOffsets,
    MaterialSnapshotSchema.serialize,
    object.materials,
  );
  writer.writeString(offsets[2], object.name);
  writer.writeDouble(offsets[3], object.priceMaterial);
  writer.writeString(offsets[4], object.status.name);
  writer.writeDouble(offsets[5], object.total);
  writer.writeByte(offsets[6], object.type.index);
  writer.writeDateTime(offsets[7], object.updatedAt);
  writer.writeLong(offsets[8], object.workedHours);
  writer.writeLong(offsets[9], object.workedMinutes);
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
  object.materials = reader.readObjectList<MaterialSnapshot>(
        offsets[1],
        MaterialSnapshotSchema.deserialize,
        allOffsets,
        MaterialSnapshot(),
      ) ??
      [];
  object.name = reader.readString(offsets[2]);
  object.status =
      _AmigurumistatusValueEnumMap[reader.readStringOrNull(offsets[4])] ??
          AmigurumiStatus.disponible;
  object.type = _AmigurumitypeValueEnumMap[reader.readByteOrNull(offsets[6])] ??
      AmigurumiType.special;
  object.updatedAt = reader.readDateTime(offsets[7]);
  object.workedHours = reader.readLong(offsets[8]);
  object.workedMinutes = reader.readLong(offsets[9]);
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
      return (reader.readObjectList<MaterialSnapshot>(
            offset,
            MaterialSnapshotSchema.deserialize,
            allOffsets,
            MaterialSnapshot(),
          ) ??
          []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (_AmigurumistatusValueEnumMap[reader.readStringOrNull(offset)] ??
          AmigurumiStatus.disponible) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (_AmigurumitypeValueEnumMap[reader.readByteOrNull(offset)] ??
          AmigurumiType.special) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AmigurumistatusEnumValueMap = {
  r'disponible': r'disponible',
  r'sobrepedido': r'sobrepedido',
  r'proximamente': r'proximamente',
};
const _AmigurumistatusValueEnumMap = {
  r'disponible': AmigurumiStatus.disponible,
  r'sobrepedido': AmigurumiStatus.sobrepedido,
  r'proximamente': AmigurumiStatus.proximamente,
};
const _AmigurumitypeEnumValueMap = {
  'special': 0,
  'normal': 1,
};
const _AmigurumitypeValueEnumMap = {
  0: AmigurumiType.special,
  1: AmigurumiType.normal,
};

Id _amigurumiGetId(Amigurumi object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _amigurumiGetLinks(Amigurumi object) {
  return [object.images, object.pricesWork];
}

void _amigurumiAttach(IsarCollection<dynamic> col, Id id, Amigurumi object) {
  object.id = id;
  object.images
      .attach(col, col.isar.collection<AmigurumiImage>(), r'images', id);
  object.pricesWork.attach(col, col.isar.collection<Work>(), r'pricesWork', id);
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materials',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> materialsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materials',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materials',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materials',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materials',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      materialsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'materials',
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      priceMaterialEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'priceMaterial',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      priceMaterialGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'priceMaterial',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      priceMaterialLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'priceMaterial',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      priceMaterialBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'priceMaterial',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusEqualTo(
    AmigurumiStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusGreaterThan(
    AmigurumiStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusLessThan(
    AmigurumiStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusBetween(
    AmigurumiStatus lower,
    AmigurumiStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> totalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> totalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> totalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> totalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'total',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> workedHoursEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workedHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      workedHoursGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workedHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> workedHoursLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workedHours',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> workedHoursBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workedHours',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      workedMinutesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workedMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      workedMinutesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workedMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      workedMinutesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workedMinutes',
        value: value,
      ));
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      workedMinutesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workedMinutes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AmigurumiQueryObject
    on QueryBuilder<Amigurumi, Amigurumi, QFilterCondition> {
  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> materialsElement(
      FilterQuery<MaterialSnapshot> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'materials');
    });
  }
}

extension AmigurumiQueryLinks
    on QueryBuilder<Amigurumi, Amigurumi, QFilterCondition> {
  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> images(
      FilterQuery<AmigurumiImage> q) {
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition> pricesWork(
      FilterQuery<Work> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'pricesWork');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      pricesWorkLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'pricesWork', length, true, length, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      pricesWorkIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'pricesWork', 0, true, 0, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      pricesWorkIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'pricesWork', 0, false, 999999, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      pricesWorkLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'pricesWork', 0, true, length, include);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      pricesWorkLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'pricesWork', length, include, 999999, true);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterFilterCondition>
      pricesWorkLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'pricesWork', lower, includeLower, upper, includeUpper);
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByPriceMaterial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceMaterial', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByPriceMaterialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceMaterial', Sort.desc);
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByWorkedHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedHours', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByWorkedHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedHours', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByWorkedMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedMinutes', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> sortByWorkedMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedMinutes', Sort.desc);
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByPriceMaterial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceMaterial', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByPriceMaterialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'priceMaterial', Sort.desc);
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
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

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByWorkedHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedHours', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByWorkedHoursDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedHours', Sort.desc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByWorkedMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedMinutes', Sort.asc);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QAfterSortBy> thenByWorkedMinutesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workedMinutes', Sort.desc);
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

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByPriceMaterial() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'priceMaterial');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'total');
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

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByWorkedHours() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workedHours');
    });
  }

  QueryBuilder<Amigurumi, Amigurumi, QDistinct> distinctByWorkedMinutes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workedMinutes');
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

  QueryBuilder<Amigurumi, List<MaterialSnapshot>, QQueryOperations>
      materialsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'materials');
    });
  }

  QueryBuilder<Amigurumi, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Amigurumi, double, QQueryOperations> priceMaterialProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'priceMaterial');
    });
  }

  QueryBuilder<Amigurumi, AmigurumiStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<Amigurumi, double, QQueryOperations> totalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'total');
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

  QueryBuilder<Amigurumi, int, QQueryOperations> workedHoursProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workedHours');
    });
  }

  QueryBuilder<Amigurumi, int, QQueryOperations> workedMinutesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workedMinutes');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAmigurumiImageCollection on Isar {
  IsarCollection<AmigurumiImage> get amigurumiImages => this.collection();
}

const AmigurumiImageSchema = CollectionSchema(
  name: r'AmigurumiImage',
  id: 6628270436741368297,
  properties: {
    r'type': PropertySchema(
      id: 0,
      name: r'type',
      type: IsarType.string,
      enumMap: _AmigurumiImagetypeEnumValueMap,
    ),
    r'url': PropertySchema(
      id: 1,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _amigurumiImageEstimateSize,
  serialize: _amigurumiImageSerialize,
  deserialize: _amigurumiImageDeserialize,
  deserializeProp: _amigurumiImageDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _amigurumiImageGetId,
  getLinks: _amigurumiImageGetLinks,
  attach: _amigurumiImageAttach,
  version: '3.1.0+1',
);

int _amigurumiImageEstimateSize(
  AmigurumiImage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.type.name.length * 3;
  bytesCount += 3 + object.url.length * 3;
  return bytesCount;
}

void _amigurumiImageSerialize(
  AmigurumiImage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.type.name);
  writer.writeString(offsets[1], object.url);
}

AmigurumiImage _amigurumiImageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AmigurumiImage();
  object.id = id;
  object.type =
      _AmigurumiImagetypeValueEnumMap[reader.readStringOrNull(offsets[0])] ??
          ImageType.local;
  object.url = reader.readString(offsets[1]);
  return object;
}

P _amigurumiImageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_AmigurumiImagetypeValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ImageType.local) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AmigurumiImagetypeEnumValueMap = {
  r'local': r'local',
  r'network': r'network',
};
const _AmigurumiImagetypeValueEnumMap = {
  r'local': ImageType.local,
  r'network': ImageType.network,
};

Id _amigurumiImageGetId(AmigurumiImage object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _amigurumiImageGetLinks(AmigurumiImage object) {
  return [];
}

void _amigurumiImageAttach(
    IsarCollection<dynamic> col, Id id, AmigurumiImage object) {
  object.id = id;
}

extension AmigurumiImageQueryWhereSort
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QWhere> {
  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AmigurumiImageQueryWhere
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QWhereClause> {
  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterWhereClause> idBetween(
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

extension AmigurumiImageQueryFilter
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QFilterCondition> {
  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition> idBetween(
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

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeEqualTo(
    ImageType value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeGreaterThan(
    ImageType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeLessThan(
    ImageType value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeBetween(
    ImageType lower,
    ImageType upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterFilterCondition>
      urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension AmigurumiImageQueryObject
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QFilterCondition> {}

extension AmigurumiImageQueryLinks
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QFilterCondition> {}

extension AmigurumiImageQuerySortBy
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QSortBy> {
  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension AmigurumiImageQuerySortThenBy
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QSortThenBy> {
  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension AmigurumiImageQueryWhereDistinct
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QDistinct> {
  QueryBuilder<AmigurumiImage, AmigurumiImage, QDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<AmigurumiImage, AmigurumiImage, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension AmigurumiImageQueryProperty
    on QueryBuilder<AmigurumiImage, AmigurumiImage, QQueryProperty> {
  QueryBuilder<AmigurumiImage, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AmigurumiImage, ImageType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<AmigurumiImage, String, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}
