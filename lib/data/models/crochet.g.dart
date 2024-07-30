// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crochet.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetYarnCollection on Isar {
  IsarCollection<Yarn> get yarns => this.collection();
}

const YarnSchema = CollectionSchema(
  name: r'Yarn',
  id: 1867334016459860855,
  properties: {
    r'isMultiColor': PropertySchema(
      id: 0,
      name: r'isMultiColor',
      type: IsarType.bool,
    ),
    r'status': PropertySchema(
      id: 1,
      name: r'status',
      type: IsarType.byte,
      enumMap: _YarnstatusEnumValueMap,
    ),
    r'stock': PropertySchema(
      id: 2,
      name: r'stock',
      type: IsarType.long,
    ),
    r'thickness': PropertySchema(
      id: 3,
      name: r'thickness',
      type: IsarType.double,
    ),
    r'type': PropertySchema(
      id: 4,
      name: r'type',
      type: IsarType.byte,
      enumMap: _YarntypeEnumValueMap,
    ),
    r'unit': PropertySchema(
      id: 5,
      name: r'unit',
      type: IsarType.byte,
      enumMap: _YarnunitEnumValueMap,
    )
  },
  estimateSize: _yarnEstimateSize,
  serialize: _yarnSerialize,
  deserialize: _yarnDeserialize,
  deserializeProp: _yarnDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'threadColors': LinkSchema(
      id: -2446169781958517826,
      name: r'threadColors',
      target: r'ThreadColor',
      single: false,
    ),
    r'threadType': LinkSchema(
      id: -647329394470491586,
      name: r'threadType',
      target: r'ThreadType',
      single: true,
    ),
    r'brand': LinkSchema(
      id: -6124040040557463937,
      name: r'brand',
      target: r'ThreadBrand',
      single: true,
    ),
    r'bills': LinkSchema(
      id: 3572518439241163664,
      name: r'bills',
      target: r'Bill',
      single: false,
      linkName: r'thread',
    )
  },
  embeddedSchemas: {},
  getId: _yarnGetId,
  getLinks: _yarnGetLinks,
  attach: _yarnAttach,
  version: '3.1.0+1',
);

int _yarnEstimateSize(
  Yarn object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _yarnSerialize(
  Yarn object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isMultiColor);
  writer.writeByte(offsets[1], object.status.index);
  writer.writeLong(offsets[2], object.stock);
  writer.writeDouble(offsets[3], object.thickness);
  writer.writeByte(offsets[4], object.type.index);
  writer.writeByte(offsets[5], object.unit.index);
}

Yarn _yarnDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Yarn();
  object.id = id;
  object.status = _YarnstatusValueEnumMap[reader.readByteOrNull(offsets[1])] ??
      ThreadStatus.nuevo;
  object.stock = reader.readLong(offsets[2]);
  object.thickness = reader.readDouble(offsets[3]);
  object.type = _YarntypeValueEnumMap[reader.readByteOrNull(offsets[4])] ??
      CrochetType.yarn;
  object.unit =
      _YarnunitValueEnumMap[reader.readByteOrNull(offsets[5])] ?? UnitWeight.gr;
  return object;
}

P _yarnDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (_YarnstatusValueEnumMap[reader.readByteOrNull(offset)] ??
          ThreadStatus.nuevo) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (_YarntypeValueEnumMap[reader.readByteOrNull(offset)] ??
          CrochetType.yarn) as P;
    case 5:
      return (_YarnunitValueEnumMap[reader.readByteOrNull(offset)] ??
          UnitWeight.gr) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _YarnstatusEnumValueMap = {
  'nuevo': 0,
  'medio': 1,
  'pocoloco': 2,
  'agotado': 3,
};
const _YarnstatusValueEnumMap = {
  0: ThreadStatus.nuevo,
  1: ThreadStatus.medio,
  2: ThreadStatus.pocoloco,
  3: ThreadStatus.agotado,
};
const _YarntypeEnumValueMap = {
  'yarn': 0,
  'filling': 1,
  'safetyEyes': 2,
  'accessories': 3,
  'keychains': 4,
  'prepacking': 5,
  'hooks': 6,
};
const _YarntypeValueEnumMap = {
  0: CrochetType.yarn,
  1: CrochetType.filling,
  2: CrochetType.safetyEyes,
  3: CrochetType.accessories,
  4: CrochetType.keychains,
  5: CrochetType.prepacking,
  6: CrochetType.hooks,
};
const _YarnunitEnumValueMap = {
  'gr': 0,
  'kg': 1,
  'pza': 2,
  'mm': 3,
  'cm': 4,
};
const _YarnunitValueEnumMap = {
  0: UnitWeight.gr,
  1: UnitWeight.kg,
  2: UnitWeight.pza,
  3: UnitWeight.mm,
  4: UnitWeight.cm,
};

Id _yarnGetId(Yarn object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _yarnGetLinks(Yarn object) {
  return [object.threadColors, object.threadType, object.brand, object.bills];
}

void _yarnAttach(IsarCollection<dynamic> col, Id id, Yarn object) {
  object.id = id;
  object.threadColors
      .attach(col, col.isar.collection<ThreadColor>(), r'threadColors', id);
  object.threadType
      .attach(col, col.isar.collection<ThreadType>(), r'threadType', id);
  object.brand.attach(col, col.isar.collection<ThreadBrand>(), r'brand', id);
  object.bills.attach(col, col.isar.collection<Bill>(), r'bills', id);
}

extension YarnQueryWhereSort on QueryBuilder<Yarn, Yarn, QWhere> {
  QueryBuilder<Yarn, Yarn, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension YarnQueryWhere on QueryBuilder<Yarn, Yarn, QWhereClause> {
  QueryBuilder<Yarn, Yarn, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Yarn, Yarn, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterWhereClause> idBetween(
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

extension YarnQueryFilter on QueryBuilder<Yarn, Yarn, QFilterCondition> {
  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> isMultiColorEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMultiColor',
        value: value,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> statusEqualTo(
      ThreadStatus value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> statusGreaterThan(
    ThreadStatus value, {
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> statusLessThan(
    ThreadStatus value, {
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> statusBetween(
    ThreadStatus lower,
    ThreadStatus upper, {
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> stockEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> stockGreaterThan(
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> stockLessThan(
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> stockBetween(
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> thicknessEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thickness',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> thicknessGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thickness',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> thicknessLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thickness',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> thicknessBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thickness',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> typeEqualTo(
      CrochetType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> typeGreaterThan(
    CrochetType value, {
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> typeLessThan(
    CrochetType value, {
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> typeBetween(
    CrochetType lower,
    CrochetType upper, {
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

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> unitEqualTo(
      UnitWeight value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> unitGreaterThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> unitLessThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> unitBetween(
    UnitWeight lower,
    UnitWeight upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension YarnQueryObject on QueryBuilder<Yarn, Yarn, QFilterCondition> {}

extension YarnQueryLinks on QueryBuilder<Yarn, Yarn, QFilterCondition> {
  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadColors(
      FilterQuery<ThreadColor> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'threadColors');
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadColorsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', length, true, length, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadColorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', 0, true, 0, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadColorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', 0, false, 999999, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadColorsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', 0, true, length, include);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadColorsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', length, include, 999999, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadColorsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'threadColors', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadType(
      FilterQuery<ThreadType> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'threadType');
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> threadTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadType', 0, true, 0, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> brand(
      FilterQuery<ThreadBrand> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'brand');
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> brandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'brand', 0, true, 0, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> bills(FilterQuery<Bill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bills');
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> billsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, true, length, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> billsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, 0, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> billsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, false, 999999, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> billsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, length, include);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> billsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, include, 999999, true);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterFilterCondition> billsLengthBetween(
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

extension YarnQuerySortBy on QueryBuilder<Yarn, Yarn, QSortBy> {
  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByIsMultiColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiColor', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByIsMultiColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiColor', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByThickness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thickness', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByThicknessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thickness', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> sortByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension YarnQuerySortThenBy on QueryBuilder<Yarn, Yarn, QSortThenBy> {
  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByIsMultiColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiColor', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByIsMultiColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMultiColor', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByThickness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thickness', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByThicknessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thickness', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Yarn, Yarn, QAfterSortBy> thenByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension YarnQueryWhereDistinct on QueryBuilder<Yarn, Yarn, QDistinct> {
  QueryBuilder<Yarn, Yarn, QDistinct> distinctByIsMultiColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMultiColor');
    });
  }

  QueryBuilder<Yarn, Yarn, QDistinct> distinctByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status');
    });
  }

  QueryBuilder<Yarn, Yarn, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<Yarn, Yarn, QDistinct> distinctByThickness() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thickness');
    });
  }

  QueryBuilder<Yarn, Yarn, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<Yarn, Yarn, QDistinct> distinctByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit');
    });
  }
}

extension YarnQueryProperty on QueryBuilder<Yarn, Yarn, QQueryProperty> {
  QueryBuilder<Yarn, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Yarn, bool, QQueryOperations> isMultiColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMultiColor');
    });
  }

  QueryBuilder<Yarn, ThreadStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<Yarn, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<Yarn, double, QQueryOperations> thicknessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thickness');
    });
  }

  QueryBuilder<Yarn, CrochetType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Yarn, UnitWeight, QQueryOperations> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFillingCollection on Isar {
  IsarCollection<Filling> get fillings => this.collection();
}

const FillingSchema = CollectionSchema(
  name: r'Filling',
  id: 4755331350227969925,
  properties: {
    r'available': PropertySchema(
      id: 0,
      name: r'available',
      type: IsarType.bool,
    ),
    r'stock': PropertySchema(
      id: 1,
      name: r'stock',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 2,
      name: r'type',
      type: IsarType.byte,
      enumMap: _FillingtypeEnumValueMap,
    ),
    r'unit': PropertySchema(
      id: 3,
      name: r'unit',
      type: IsarType.byte,
      enumMap: _FillingunitEnumValueMap,
    )
  },
  estimateSize: _fillingEstimateSize,
  serialize: _fillingSerialize,
  deserialize: _fillingDeserialize,
  deserializeProp: _fillingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'bills': LinkSchema(
      id: -5786305821310130867,
      name: r'bills',
      target: r'Bill',
      single: false,
      linkName: r'filling',
    )
  },
  embeddedSchemas: {},
  getId: _fillingGetId,
  getLinks: _fillingGetLinks,
  attach: _fillingAttach,
  version: '3.1.0+1',
);

int _fillingEstimateSize(
  Filling object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _fillingSerialize(
  Filling object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.available);
  writer.writeLong(offsets[1], object.stock);
  writer.writeByte(offsets[2], object.type.index);
  writer.writeByte(offsets[3], object.unit.index);
}

Filling _fillingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Filling();
  object.available = reader.readBool(offsets[0]);
  object.id = id;
  object.stock = reader.readLong(offsets[1]);
  object.type = _FillingtypeValueEnumMap[reader.readByteOrNull(offsets[2])] ??
      CrochetType.yarn;
  object.unit = _FillingunitValueEnumMap[reader.readByteOrNull(offsets[3])] ??
      UnitWeight.gr;
  return object;
}

P _fillingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (_FillingtypeValueEnumMap[reader.readByteOrNull(offset)] ??
          CrochetType.yarn) as P;
    case 3:
      return (_FillingunitValueEnumMap[reader.readByteOrNull(offset)] ??
          UnitWeight.gr) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FillingtypeEnumValueMap = {
  'yarn': 0,
  'filling': 1,
  'safetyEyes': 2,
  'accessories': 3,
  'keychains': 4,
  'prepacking': 5,
  'hooks': 6,
};
const _FillingtypeValueEnumMap = {
  0: CrochetType.yarn,
  1: CrochetType.filling,
  2: CrochetType.safetyEyes,
  3: CrochetType.accessories,
  4: CrochetType.keychains,
  5: CrochetType.prepacking,
  6: CrochetType.hooks,
};
const _FillingunitEnumValueMap = {
  'gr': 0,
  'kg': 1,
  'pza': 2,
  'mm': 3,
  'cm': 4,
};
const _FillingunitValueEnumMap = {
  0: UnitWeight.gr,
  1: UnitWeight.kg,
  2: UnitWeight.pza,
  3: UnitWeight.mm,
  4: UnitWeight.cm,
};

Id _fillingGetId(Filling object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _fillingGetLinks(Filling object) {
  return [object.bills];
}

void _fillingAttach(IsarCollection<dynamic> col, Id id, Filling object) {
  object.id = id;
  object.bills.attach(col, col.isar.collection<Bill>(), r'bills', id);
}

extension FillingQueryWhereSort on QueryBuilder<Filling, Filling, QWhere> {
  QueryBuilder<Filling, Filling, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FillingQueryWhere on QueryBuilder<Filling, Filling, QWhereClause> {
  QueryBuilder<Filling, Filling, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Filling, Filling, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Filling, Filling, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Filling, Filling, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Filling, Filling, QAfterWhereClause> idBetween(
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

extension FillingQueryFilter
    on QueryBuilder<Filling, Filling, QFilterCondition> {
  QueryBuilder<Filling, Filling, QAfterFilterCondition> availableEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'available',
        value: value,
      ));
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> stockEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> stockGreaterThan(
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> stockLessThan(
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> stockBetween(
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> typeEqualTo(
      CrochetType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> typeGreaterThan(
    CrochetType value, {
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> typeLessThan(
    CrochetType value, {
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> typeBetween(
    CrochetType lower,
    CrochetType upper, {
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

  QueryBuilder<Filling, Filling, QAfterFilterCondition> unitEqualTo(
      UnitWeight value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> unitGreaterThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> unitLessThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> unitBetween(
    UnitWeight lower,
    UnitWeight upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FillingQueryObject
    on QueryBuilder<Filling, Filling, QFilterCondition> {}

extension FillingQueryLinks
    on QueryBuilder<Filling, Filling, QFilterCondition> {
  QueryBuilder<Filling, Filling, QAfterFilterCondition> bills(
      FilterQuery<Bill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bills');
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> billsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, true, length, true);
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> billsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, 0, true);
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> billsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, false, 999999, true);
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> billsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, length, include);
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> billsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, include, 999999, true);
    });
  }

  QueryBuilder<Filling, Filling, QAfterFilterCondition> billsLengthBetween(
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

extension FillingQuerySortBy on QueryBuilder<Filling, Filling, QSortBy> {
  QueryBuilder<Filling, Filling, QAfterSortBy> sortByAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'available', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> sortByAvailableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'available', Sort.desc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> sortByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> sortByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension FillingQuerySortThenBy
    on QueryBuilder<Filling, Filling, QSortThenBy> {
  QueryBuilder<Filling, Filling, QAfterSortBy> thenByAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'available', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenByAvailableDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'available', Sort.desc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Filling, Filling, QAfterSortBy> thenByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension FillingQueryWhereDistinct
    on QueryBuilder<Filling, Filling, QDistinct> {
  QueryBuilder<Filling, Filling, QDistinct> distinctByAvailable() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'available');
    });
  }

  QueryBuilder<Filling, Filling, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<Filling, Filling, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<Filling, Filling, QDistinct> distinctByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit');
    });
  }
}

extension FillingQueryProperty
    on QueryBuilder<Filling, Filling, QQueryProperty> {
  QueryBuilder<Filling, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Filling, bool, QQueryOperations> availableProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'available');
    });
  }

  QueryBuilder<Filling, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<Filling, CrochetType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Filling, UnitWeight, QQueryOperations> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSafetyEyesCollection on Isar {
  IsarCollection<SafetyEyes> get safetyEyes => this.collection();
}

const SafetyEyesSchema = CollectionSchema(
  name: r'SafetyEyes',
  id: 6836863543017380424,
  properties: {
    r'shape': PropertySchema(
      id: 0,
      name: r'shape',
      type: IsarType.string,
    ),
    r'size': PropertySchema(
      id: 1,
      name: r'size',
      type: IsarType.string,
    ),
    r'stock': PropertySchema(
      id: 2,
      name: r'stock',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 3,
      name: r'type',
      type: IsarType.byte,
      enumMap: _SafetyEyestypeEnumValueMap,
    ),
    r'unit': PropertySchema(
      id: 4,
      name: r'unit',
      type: IsarType.byte,
      enumMap: _SafetyEyesunitEnumValueMap,
    )
  },
  estimateSize: _safetyEyesEstimateSize,
  serialize: _safetyEyesSerialize,
  deserialize: _safetyEyesDeserialize,
  deserializeProp: _safetyEyesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'bills': LinkSchema(
      id: -6189584522810227873,
      name: r'bills',
      target: r'Bill',
      single: false,
      linkName: r'safetyEye',
    ),
    r'threadColor': LinkSchema(
      id: -3306485493193404754,
      name: r'threadColor',
      target: r'ThreadColor',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _safetyEyesGetId,
  getLinks: _safetyEyesGetLinks,
  attach: _safetyEyesAttach,
  version: '3.1.0+1',
);

int _safetyEyesEstimateSize(
  SafetyEyes object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.shape.length * 3;
  bytesCount += 3 + object.size.length * 3;
  return bytesCount;
}

void _safetyEyesSerialize(
  SafetyEyes object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.shape);
  writer.writeString(offsets[1], object.size);
  writer.writeLong(offsets[2], object.stock);
  writer.writeByte(offsets[3], object.type.index);
  writer.writeByte(offsets[4], object.unit.index);
}

SafetyEyes _safetyEyesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SafetyEyes();
  object.id = id;
  object.shape = reader.readString(offsets[0]);
  object.size = reader.readString(offsets[1]);
  object.stock = reader.readLong(offsets[2]);
  object.type =
      _SafetyEyestypeValueEnumMap[reader.readByteOrNull(offsets[3])] ??
          CrochetType.yarn;
  object.unit =
      _SafetyEyesunitValueEnumMap[reader.readByteOrNull(offsets[4])] ??
          UnitWeight.gr;
  return object;
}

P _safetyEyesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (_SafetyEyestypeValueEnumMap[reader.readByteOrNull(offset)] ??
          CrochetType.yarn) as P;
    case 4:
      return (_SafetyEyesunitValueEnumMap[reader.readByteOrNull(offset)] ??
          UnitWeight.gr) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _SafetyEyestypeEnumValueMap = {
  'yarn': 0,
  'filling': 1,
  'safetyEyes': 2,
  'accessories': 3,
  'keychains': 4,
  'prepacking': 5,
  'hooks': 6,
};
const _SafetyEyestypeValueEnumMap = {
  0: CrochetType.yarn,
  1: CrochetType.filling,
  2: CrochetType.safetyEyes,
  3: CrochetType.accessories,
  4: CrochetType.keychains,
  5: CrochetType.prepacking,
  6: CrochetType.hooks,
};
const _SafetyEyesunitEnumValueMap = {
  'gr': 0,
  'kg': 1,
  'pza': 2,
  'mm': 3,
  'cm': 4,
};
const _SafetyEyesunitValueEnumMap = {
  0: UnitWeight.gr,
  1: UnitWeight.kg,
  2: UnitWeight.pza,
  3: UnitWeight.mm,
  4: UnitWeight.cm,
};

Id _safetyEyesGetId(SafetyEyes object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _safetyEyesGetLinks(SafetyEyes object) {
  return [object.bills, object.threadColor];
}

void _safetyEyesAttach(IsarCollection<dynamic> col, Id id, SafetyEyes object) {
  object.id = id;
  object.bills.attach(col, col.isar.collection<Bill>(), r'bills', id);
  object.threadColor
      .attach(col, col.isar.collection<ThreadColor>(), r'threadColor', id);
}

extension SafetyEyesQueryWhereSort
    on QueryBuilder<SafetyEyes, SafetyEyes, QWhere> {
  QueryBuilder<SafetyEyes, SafetyEyes, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SafetyEyesQueryWhere
    on QueryBuilder<SafetyEyes, SafetyEyes, QWhereClause> {
  QueryBuilder<SafetyEyes, SafetyEyes, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterWhereClause> idBetween(
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

extension SafetyEyesQueryFilter
    on QueryBuilder<SafetyEyes, SafetyEyes, QFilterCondition> {
  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shape',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shape',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shape',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shape',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shape',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shape',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shape',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shape',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> shapeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shape',
        value: '',
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition>
      shapeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shape',
        value: '',
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'size',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'size',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'size',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'size',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'size',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'size',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'size',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'size',
        value: '',
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> sizeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'size',
        value: '',
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> stockEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> stockGreaterThan(
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> stockLessThan(
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> stockBetween(
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> typeEqualTo(
      CrochetType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> typeGreaterThan(
    CrochetType value, {
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> typeLessThan(
    CrochetType value, {
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> typeBetween(
    CrochetType lower,
    CrochetType upper, {
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> unitEqualTo(
      UnitWeight value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> unitGreaterThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> unitLessThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> unitBetween(
    UnitWeight lower,
    UnitWeight upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SafetyEyesQueryObject
    on QueryBuilder<SafetyEyes, SafetyEyes, QFilterCondition> {}

extension SafetyEyesQueryLinks
    on QueryBuilder<SafetyEyes, SafetyEyes, QFilterCondition> {
  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> bills(
      FilterQuery<Bill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bills');
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition>
      billsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, true, length, true);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> billsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, 0, true);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition>
      billsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, false, 999999, true);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition>
      billsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, length, include);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition>
      billsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, include, 999999, true);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition>
      billsLengthBetween(
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

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition> threadColor(
      FilterQuery<ThreadColor> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'threadColor');
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterFilterCondition>
      threadColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColor', 0, true, 0, true);
    });
  }
}

extension SafetyEyesQuerySortBy
    on QueryBuilder<SafetyEyes, SafetyEyes, QSortBy> {
  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortByShape() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shape', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortByShapeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shape', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> sortByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension SafetyEyesQuerySortThenBy
    on QueryBuilder<SafetyEyes, SafetyEyes, QSortThenBy> {
  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByShape() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shape', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByShapeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shape', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenBySize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenBySizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'size', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QAfterSortBy> thenByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension SafetyEyesQueryWhereDistinct
    on QueryBuilder<SafetyEyes, SafetyEyes, QDistinct> {
  QueryBuilder<SafetyEyes, SafetyEyes, QDistinct> distinctByShape(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shape', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QDistinct> distinctBySize(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'size', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<SafetyEyes, SafetyEyes, QDistinct> distinctByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit');
    });
  }
}

extension SafetyEyesQueryProperty
    on QueryBuilder<SafetyEyes, SafetyEyes, QQueryProperty> {
  QueryBuilder<SafetyEyes, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SafetyEyes, String, QQueryOperations> shapeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shape');
    });
  }

  QueryBuilder<SafetyEyes, String, QQueryOperations> sizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'size');
    });
  }

  QueryBuilder<SafetyEyes, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<SafetyEyes, CrochetType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<SafetyEyes, UnitWeight, QQueryOperations> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAccessoriesCollection on Isar {
  IsarCollection<Accessories> get accessories => this.collection();
}

const AccessoriesSchema = CollectionSchema(
  name: r'Accessories',
  id: -3873407479297800499,
  properties: {
    r'stock': PropertySchema(
      id: 0,
      name: r'stock',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.byte,
      enumMap: _AccessoriestypeEnumValueMap,
    ),
    r'unit': PropertySchema(
      id: 2,
      name: r'unit',
      type: IsarType.byte,
      enumMap: _AccessoriesunitEnumValueMap,
    )
  },
  estimateSize: _accessoriesEstimateSize,
  serialize: _accessoriesSerialize,
  deserialize: _accessoriesDeserialize,
  deserializeProp: _accessoriesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'threadColors': LinkSchema(
      id: 8317186689593832106,
      name: r'threadColors',
      target: r'ThreadColor',
      single: false,
    ),
    r'bills': LinkSchema(
      id: 4522008295364413064,
      name: r'bills',
      target: r'Bill',
      single: false,
      linkName: r'accessory',
    )
  },
  embeddedSchemas: {},
  getId: _accessoriesGetId,
  getLinks: _accessoriesGetLinks,
  attach: _accessoriesAttach,
  version: '3.1.0+1',
);

int _accessoriesEstimateSize(
  Accessories object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _accessoriesSerialize(
  Accessories object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.stock);
  writer.writeByte(offsets[1], object.type.index);
  writer.writeByte(offsets[2], object.unit.index);
}

Accessories _accessoriesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Accessories();
  object.id = id;
  object.stock = reader.readLong(offsets[0]);
  object.type =
      _AccessoriestypeValueEnumMap[reader.readByteOrNull(offsets[1])] ??
          CrochetType.yarn;
  object.unit =
      _AccessoriesunitValueEnumMap[reader.readByteOrNull(offsets[2])] ??
          UnitWeight.gr;
  return object;
}

P _accessoriesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (_AccessoriestypeValueEnumMap[reader.readByteOrNull(offset)] ??
          CrochetType.yarn) as P;
    case 2:
      return (_AccessoriesunitValueEnumMap[reader.readByteOrNull(offset)] ??
          UnitWeight.gr) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AccessoriestypeEnumValueMap = {
  'yarn': 0,
  'filling': 1,
  'safetyEyes': 2,
  'accessories': 3,
  'keychains': 4,
  'prepacking': 5,
  'hooks': 6,
};
const _AccessoriestypeValueEnumMap = {
  0: CrochetType.yarn,
  1: CrochetType.filling,
  2: CrochetType.safetyEyes,
  3: CrochetType.accessories,
  4: CrochetType.keychains,
  5: CrochetType.prepacking,
  6: CrochetType.hooks,
};
const _AccessoriesunitEnumValueMap = {
  'gr': 0,
  'kg': 1,
  'pza': 2,
  'mm': 3,
  'cm': 4,
};
const _AccessoriesunitValueEnumMap = {
  0: UnitWeight.gr,
  1: UnitWeight.kg,
  2: UnitWeight.pza,
  3: UnitWeight.mm,
  4: UnitWeight.cm,
};

Id _accessoriesGetId(Accessories object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _accessoriesGetLinks(Accessories object) {
  return [object.threadColors, object.bills];
}

void _accessoriesAttach(
    IsarCollection<dynamic> col, Id id, Accessories object) {
  object.id = id;
  object.threadColors
      .attach(col, col.isar.collection<ThreadColor>(), r'threadColors', id);
  object.bills.attach(col, col.isar.collection<Bill>(), r'bills', id);
}

extension AccessoriesQueryWhereSort
    on QueryBuilder<Accessories, Accessories, QWhere> {
  QueryBuilder<Accessories, Accessories, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AccessoriesQueryWhere
    on QueryBuilder<Accessories, Accessories, QWhereClause> {
  QueryBuilder<Accessories, Accessories, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<Accessories, Accessories, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterWhereClause> idBetween(
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

extension AccessoriesQueryFilter
    on QueryBuilder<Accessories, Accessories, QFilterCondition> {
  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> stockEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      stockGreaterThan(
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> stockLessThan(
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> stockBetween(
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> typeEqualTo(
      CrochetType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> typeGreaterThan(
    CrochetType value, {
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> typeLessThan(
    CrochetType value, {
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> typeBetween(
    CrochetType lower,
    CrochetType upper, {
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

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> unitEqualTo(
      UnitWeight value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> unitGreaterThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> unitLessThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> unitBetween(
    UnitWeight lower,
    UnitWeight upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AccessoriesQueryObject
    on QueryBuilder<Accessories, Accessories, QFilterCondition> {}

extension AccessoriesQueryLinks
    on QueryBuilder<Accessories, Accessories, QFilterCondition> {
  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> threadColors(
      FilterQuery<ThreadColor> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'threadColors');
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      threadColorsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', length, true, length, true);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      threadColorsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', 0, true, 0, true);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      threadColorsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', 0, false, 999999, true);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      threadColorsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', 0, true, length, include);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      threadColorsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColors', length, include, 999999, true);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      threadColorsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'threadColors', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> bills(
      FilterQuery<Bill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bills');
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      billsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, true, length, true);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition> billsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, 0, true);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      billsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, false, 999999, true);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      billsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, length, include);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      billsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, include, 999999, true);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterFilterCondition>
      billsLengthBetween(
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

extension AccessoriesQuerySortBy
    on QueryBuilder<Accessories, Accessories, QSortBy> {
  QueryBuilder<Accessories, Accessories, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> sortByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> sortByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension AccessoriesQuerySortThenBy
    on QueryBuilder<Accessories, Accessories, QSortThenBy> {
  QueryBuilder<Accessories, Accessories, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> thenByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Accessories, Accessories, QAfterSortBy> thenByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension AccessoriesQueryWhereDistinct
    on QueryBuilder<Accessories, Accessories, QDistinct> {
  QueryBuilder<Accessories, Accessories, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<Accessories, Accessories, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<Accessories, Accessories, QDistinct> distinctByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit');
    });
  }
}

extension AccessoriesQueryProperty
    on QueryBuilder<Accessories, Accessories, QQueryProperty> {
  QueryBuilder<Accessories, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Accessories, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<Accessories, CrochetType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Accessories, UnitWeight, QQueryOperations> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKeychainsCollection on Isar {
  IsarCollection<Keychains> get keychains => this.collection();
}

const KeychainsSchema = CollectionSchema(
  name: r'Keychains',
  id: -7210721088709863367,
  properties: {
    r'stock': PropertySchema(
      id: 0,
      name: r'stock',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.byte,
      enumMap: _KeychainstypeEnumValueMap,
    ),
    r'unit': PropertySchema(
      id: 2,
      name: r'unit',
      type: IsarType.byte,
      enumMap: _KeychainsunitEnumValueMap,
    )
  },
  estimateSize: _keychainsEstimateSize,
  serialize: _keychainsSerialize,
  deserialize: _keychainsDeserialize,
  deserializeProp: _keychainsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'bills': LinkSchema(
      id: 2833234584986310216,
      name: r'bills',
      target: r'Bill',
      single: false,
      linkName: r'keychains',
    ),
    r'threadColor': LinkSchema(
      id: 4396783637976067154,
      name: r'threadColor',
      target: r'ThreadColor',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _keychainsGetId,
  getLinks: _keychainsGetLinks,
  attach: _keychainsAttach,
  version: '3.1.0+1',
);

int _keychainsEstimateSize(
  Keychains object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _keychainsSerialize(
  Keychains object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.stock);
  writer.writeByte(offsets[1], object.type.index);
  writer.writeByte(offsets[2], object.unit.index);
}

Keychains _keychainsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Keychains();
  object.id = id;
  object.stock = reader.readLong(offsets[0]);
  object.type = _KeychainstypeValueEnumMap[reader.readByteOrNull(offsets[1])] ??
      CrochetType.yarn;
  object.unit = _KeychainsunitValueEnumMap[reader.readByteOrNull(offsets[2])] ??
      UnitWeight.gr;
  return object;
}

P _keychainsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (_KeychainstypeValueEnumMap[reader.readByteOrNull(offset)] ??
          CrochetType.yarn) as P;
    case 2:
      return (_KeychainsunitValueEnumMap[reader.readByteOrNull(offset)] ??
          UnitWeight.gr) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _KeychainstypeEnumValueMap = {
  'yarn': 0,
  'filling': 1,
  'safetyEyes': 2,
  'accessories': 3,
  'keychains': 4,
  'prepacking': 5,
  'hooks': 6,
};
const _KeychainstypeValueEnumMap = {
  0: CrochetType.yarn,
  1: CrochetType.filling,
  2: CrochetType.safetyEyes,
  3: CrochetType.accessories,
  4: CrochetType.keychains,
  5: CrochetType.prepacking,
  6: CrochetType.hooks,
};
const _KeychainsunitEnumValueMap = {
  'gr': 0,
  'kg': 1,
  'pza': 2,
  'mm': 3,
  'cm': 4,
};
const _KeychainsunitValueEnumMap = {
  0: UnitWeight.gr,
  1: UnitWeight.kg,
  2: UnitWeight.pza,
  3: UnitWeight.mm,
  4: UnitWeight.cm,
};

Id _keychainsGetId(Keychains object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _keychainsGetLinks(Keychains object) {
  return [object.bills, object.threadColor];
}

void _keychainsAttach(IsarCollection<dynamic> col, Id id, Keychains object) {
  object.id = id;
  object.bills.attach(col, col.isar.collection<Bill>(), r'bills', id);
  object.threadColor
      .attach(col, col.isar.collection<ThreadColor>(), r'threadColor', id);
}

extension KeychainsQueryWhereSort
    on QueryBuilder<Keychains, Keychains, QWhere> {
  QueryBuilder<Keychains, Keychains, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension KeychainsQueryWhere
    on QueryBuilder<Keychains, Keychains, QWhereClause> {
  QueryBuilder<Keychains, Keychains, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Keychains, Keychains, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterWhereClause> idBetween(
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

extension KeychainsQueryFilter
    on QueryBuilder<Keychains, Keychains, QFilterCondition> {
  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> stockEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> stockGreaterThan(
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> stockLessThan(
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> stockBetween(
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> typeEqualTo(
      CrochetType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> typeGreaterThan(
    CrochetType value, {
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> typeLessThan(
    CrochetType value, {
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> typeBetween(
    CrochetType lower,
    CrochetType upper, {
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> unitEqualTo(
      UnitWeight value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> unitGreaterThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> unitLessThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> unitBetween(
    UnitWeight lower,
    UnitWeight upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension KeychainsQueryObject
    on QueryBuilder<Keychains, Keychains, QFilterCondition> {}

extension KeychainsQueryLinks
    on QueryBuilder<Keychains, Keychains, QFilterCondition> {
  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> bills(
      FilterQuery<Bill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bills');
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> billsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, true, length, true);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> billsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, 0, true);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> billsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, false, 999999, true);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> billsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, length, include);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition>
      billsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, include, 999999, true);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> billsLengthBetween(
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

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition> threadColor(
      FilterQuery<ThreadColor> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'threadColor');
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterFilterCondition>
      threadColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'threadColor', 0, true, 0, true);
    });
  }
}

extension KeychainsQuerySortBy on QueryBuilder<Keychains, Keychains, QSortBy> {
  QueryBuilder<Keychains, Keychains, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> sortByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> sortByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension KeychainsQuerySortThenBy
    on QueryBuilder<Keychains, Keychains, QSortThenBy> {
  QueryBuilder<Keychains, Keychains, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> thenByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Keychains, Keychains, QAfterSortBy> thenByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension KeychainsQueryWhereDistinct
    on QueryBuilder<Keychains, Keychains, QDistinct> {
  QueryBuilder<Keychains, Keychains, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<Keychains, Keychains, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<Keychains, Keychains, QDistinct> distinctByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit');
    });
  }
}

extension KeychainsQueryProperty
    on QueryBuilder<Keychains, Keychains, QQueryProperty> {
  QueryBuilder<Keychains, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Keychains, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<Keychains, CrochetType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Keychains, UnitWeight, QQueryOperations> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPrePackingCollection on Isar {
  IsarCollection<PrePacking> get prePackings => this.collection();
}

const PrePackingSchema = CollectionSchema(
  name: r'PrePacking',
  id: -1846694688209697710,
  properties: {
    r'stock': PropertySchema(
      id: 0,
      name: r'stock',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.byte,
      enumMap: _PrePackingtypeEnumValueMap,
    ),
    r'unit': PropertySchema(
      id: 2,
      name: r'unit',
      type: IsarType.byte,
      enumMap: _PrePackingunitEnumValueMap,
    )
  },
  estimateSize: _prePackingEstimateSize,
  serialize: _prePackingSerialize,
  deserialize: _prePackingDeserialize,
  deserializeProp: _prePackingDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'bills': LinkSchema(
      id: -7148178379464185534,
      name: r'bills',
      target: r'Bill',
      single: false,
      linkName: r'prePacking',
    )
  },
  embeddedSchemas: {},
  getId: _prePackingGetId,
  getLinks: _prePackingGetLinks,
  attach: _prePackingAttach,
  version: '3.1.0+1',
);

int _prePackingEstimateSize(
  PrePacking object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _prePackingSerialize(
  PrePacking object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.stock);
  writer.writeByte(offsets[1], object.type.index);
  writer.writeByte(offsets[2], object.unit.index);
}

PrePacking _prePackingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PrePacking();
  object.id = id;
  object.stock = reader.readLong(offsets[0]);
  object.type =
      _PrePackingtypeValueEnumMap[reader.readByteOrNull(offsets[1])] ??
          CrochetType.yarn;
  object.unit =
      _PrePackingunitValueEnumMap[reader.readByteOrNull(offsets[2])] ??
          UnitWeight.gr;
  return object;
}

P _prePackingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (_PrePackingtypeValueEnumMap[reader.readByteOrNull(offset)] ??
          CrochetType.yarn) as P;
    case 2:
      return (_PrePackingunitValueEnumMap[reader.readByteOrNull(offset)] ??
          UnitWeight.gr) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PrePackingtypeEnumValueMap = {
  'yarn': 0,
  'filling': 1,
  'safetyEyes': 2,
  'accessories': 3,
  'keychains': 4,
  'prepacking': 5,
  'hooks': 6,
};
const _PrePackingtypeValueEnumMap = {
  0: CrochetType.yarn,
  1: CrochetType.filling,
  2: CrochetType.safetyEyes,
  3: CrochetType.accessories,
  4: CrochetType.keychains,
  5: CrochetType.prepacking,
  6: CrochetType.hooks,
};
const _PrePackingunitEnumValueMap = {
  'gr': 0,
  'kg': 1,
  'pza': 2,
  'mm': 3,
  'cm': 4,
};
const _PrePackingunitValueEnumMap = {
  0: UnitWeight.gr,
  1: UnitWeight.kg,
  2: UnitWeight.pza,
  3: UnitWeight.mm,
  4: UnitWeight.cm,
};

Id _prePackingGetId(PrePacking object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _prePackingGetLinks(PrePacking object) {
  return [object.bills];
}

void _prePackingAttach(IsarCollection<dynamic> col, Id id, PrePacking object) {
  object.id = id;
  object.bills.attach(col, col.isar.collection<Bill>(), r'bills', id);
}

extension PrePackingQueryWhereSort
    on QueryBuilder<PrePacking, PrePacking, QWhere> {
  QueryBuilder<PrePacking, PrePacking, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PrePackingQueryWhere
    on QueryBuilder<PrePacking, PrePacking, QWhereClause> {
  QueryBuilder<PrePacking, PrePacking, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<PrePacking, PrePacking, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterWhereClause> idBetween(
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

extension PrePackingQueryFilter
    on QueryBuilder<PrePacking, PrePacking, QFilterCondition> {
  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> stockEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> stockGreaterThan(
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> stockLessThan(
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> stockBetween(
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> typeEqualTo(
      CrochetType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> typeGreaterThan(
    CrochetType value, {
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> typeLessThan(
    CrochetType value, {
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> typeBetween(
    CrochetType lower,
    CrochetType upper, {
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

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> unitEqualTo(
      UnitWeight value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> unitGreaterThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> unitLessThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> unitBetween(
    UnitWeight lower,
    UnitWeight upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PrePackingQueryObject
    on QueryBuilder<PrePacking, PrePacking, QFilterCondition> {}

extension PrePackingQueryLinks
    on QueryBuilder<PrePacking, PrePacking, QFilterCondition> {
  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> bills(
      FilterQuery<Bill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bills');
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition>
      billsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, true, length, true);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition> billsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, 0, true);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition>
      billsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, false, 999999, true);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition>
      billsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, length, include);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition>
      billsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, include, 999999, true);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterFilterCondition>
      billsLengthBetween(
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

extension PrePackingQuerySortBy
    on QueryBuilder<PrePacking, PrePacking, QSortBy> {
  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> sortByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> sortByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension PrePackingQuerySortThenBy
    on QueryBuilder<PrePacking, PrePacking, QSortThenBy> {
  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> thenByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<PrePacking, PrePacking, QAfterSortBy> thenByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension PrePackingQueryWhereDistinct
    on QueryBuilder<PrePacking, PrePacking, QDistinct> {
  QueryBuilder<PrePacking, PrePacking, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<PrePacking, PrePacking, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<PrePacking, PrePacking, QDistinct> distinctByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit');
    });
  }
}

extension PrePackingQueryProperty
    on QueryBuilder<PrePacking, PrePacking, QQueryProperty> {
  QueryBuilder<PrePacking, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PrePacking, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<PrePacking, CrochetType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<PrePacking, UnitWeight, QQueryOperations> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetHooksCollection on Isar {
  IsarCollection<Hooks> get hooks => this.collection();
}

const HooksSchema = CollectionSchema(
  name: r'Hooks',
  id: 438383076648189157,
  properties: {
    r'stock': PropertySchema(
      id: 0,
      name: r'stock',
      type: IsarType.long,
    ),
    r'thickness': PropertySchema(
      id: 1,
      name: r'thickness',
      type: IsarType.double,
    ),
    r'type': PropertySchema(
      id: 2,
      name: r'type',
      type: IsarType.byte,
      enumMap: _HookstypeEnumValueMap,
    ),
    r'unit': PropertySchema(
      id: 3,
      name: r'unit',
      type: IsarType.byte,
      enumMap: _HooksunitEnumValueMap,
    )
  },
  estimateSize: _hooksEstimateSize,
  serialize: _hooksSerialize,
  deserialize: _hooksDeserialize,
  deserializeProp: _hooksDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'bills': LinkSchema(
      id: -5648582990762251387,
      name: r'bills',
      target: r'Bill',
      single: false,
      linkName: r'hooks',
    )
  },
  embeddedSchemas: {},
  getId: _hooksGetId,
  getLinks: _hooksGetLinks,
  attach: _hooksAttach,
  version: '3.1.0+1',
);

int _hooksEstimateSize(
  Hooks object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _hooksSerialize(
  Hooks object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.stock);
  writer.writeDouble(offsets[1], object.thickness);
  writer.writeByte(offsets[2], object.type.index);
  writer.writeByte(offsets[3], object.unit.index);
}

Hooks _hooksDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Hooks();
  object.id = id;
  object.stock = reader.readLong(offsets[0]);
  object.thickness = reader.readDouble(offsets[1]);
  object.type = _HookstypeValueEnumMap[reader.readByteOrNull(offsets[2])] ??
      CrochetType.yarn;
  object.unit = _HooksunitValueEnumMap[reader.readByteOrNull(offsets[3])] ??
      UnitWeight.gr;
  return object;
}

P _hooksDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (_HookstypeValueEnumMap[reader.readByteOrNull(offset)] ??
          CrochetType.yarn) as P;
    case 3:
      return (_HooksunitValueEnumMap[reader.readByteOrNull(offset)] ??
          UnitWeight.gr) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _HookstypeEnumValueMap = {
  'yarn': 0,
  'filling': 1,
  'safetyEyes': 2,
  'accessories': 3,
  'keychains': 4,
  'prepacking': 5,
  'hooks': 6,
};
const _HookstypeValueEnumMap = {
  0: CrochetType.yarn,
  1: CrochetType.filling,
  2: CrochetType.safetyEyes,
  3: CrochetType.accessories,
  4: CrochetType.keychains,
  5: CrochetType.prepacking,
  6: CrochetType.hooks,
};
const _HooksunitEnumValueMap = {
  'gr': 0,
  'kg': 1,
  'pza': 2,
  'mm': 3,
  'cm': 4,
};
const _HooksunitValueEnumMap = {
  0: UnitWeight.gr,
  1: UnitWeight.kg,
  2: UnitWeight.pza,
  3: UnitWeight.mm,
  4: UnitWeight.cm,
};

Id _hooksGetId(Hooks object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _hooksGetLinks(Hooks object) {
  return [object.bills];
}

void _hooksAttach(IsarCollection<dynamic> col, Id id, Hooks object) {
  object.id = id;
  object.bills.attach(col, col.isar.collection<Bill>(), r'bills', id);
}

extension HooksQueryWhereSort on QueryBuilder<Hooks, Hooks, QWhere> {
  QueryBuilder<Hooks, Hooks, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension HooksQueryWhere on QueryBuilder<Hooks, Hooks, QWhereClause> {
  QueryBuilder<Hooks, Hooks, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Hooks, Hooks, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterWhereClause> idBetween(
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

extension HooksQueryFilter on QueryBuilder<Hooks, Hooks, QFilterCondition> {
  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> stockEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stock',
        value: value,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> stockGreaterThan(
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> stockLessThan(
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> stockBetween(
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> thicknessEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thickness',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> thicknessGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thickness',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> thicknessLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thickness',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> thicknessBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thickness',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> typeEqualTo(
      CrochetType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> typeGreaterThan(
    CrochetType value, {
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> typeLessThan(
    CrochetType value, {
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> typeBetween(
    CrochetType lower,
    CrochetType upper, {
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

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> unitEqualTo(
      UnitWeight value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> unitGreaterThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> unitLessThan(
    UnitWeight value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
      ));
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> unitBetween(
    UnitWeight lower,
    UnitWeight upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension HooksQueryObject on QueryBuilder<Hooks, Hooks, QFilterCondition> {}

extension HooksQueryLinks on QueryBuilder<Hooks, Hooks, QFilterCondition> {
  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> bills(FilterQuery<Bill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'bills');
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> billsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, true, length, true);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> billsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, 0, true);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> billsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, false, 999999, true);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> billsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', 0, true, length, include);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> billsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'bills', length, include, 999999, true);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterFilterCondition> billsLengthBetween(
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

extension HooksQuerySortBy on QueryBuilder<Hooks, Hooks, QSortBy> {
  QueryBuilder<Hooks, Hooks, QAfterSortBy> sortByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> sortByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> sortByThickness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thickness', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> sortByThicknessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thickness', Sort.desc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> sortByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> sortByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension HooksQuerySortThenBy on QueryBuilder<Hooks, Hooks, QSortThenBy> {
  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByStockDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stock', Sort.desc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByThickness() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thickness', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByThicknessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'thickness', Sort.desc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.asc);
    });
  }

  QueryBuilder<Hooks, Hooks, QAfterSortBy> thenByUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unit', Sort.desc);
    });
  }
}

extension HooksQueryWhereDistinct on QueryBuilder<Hooks, Hooks, QDistinct> {
  QueryBuilder<Hooks, Hooks, QDistinct> distinctByStock() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stock');
    });
  }

  QueryBuilder<Hooks, Hooks, QDistinct> distinctByThickness() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'thickness');
    });
  }

  QueryBuilder<Hooks, Hooks, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<Hooks, Hooks, QDistinct> distinctByUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unit');
    });
  }
}

extension HooksQueryProperty on QueryBuilder<Hooks, Hooks, QQueryProperty> {
  QueryBuilder<Hooks, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Hooks, int, QQueryOperations> stockProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stock');
    });
  }

  QueryBuilder<Hooks, double, QQueryOperations> thicknessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'thickness');
    });
  }

  QueryBuilder<Hooks, CrochetType, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<Hooks, UnitWeight, QQueryOperations> unitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unit');
    });
  }
}
