// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWorkCollection on Isar {
  IsarCollection<Work> get works => this.collection();
}

const WorkSchema = CollectionSchema(
  name: r'Work',
  id: -8698971972360759186,
  properties: {
    r'fee': PropertySchema(
      id: 0,
      name: r'fee',
      type: IsarType.int,
    ),
    r'timeLapse': PropertySchema(
      id: 1,
      name: r'timeLapse',
      type: IsarType.byte,
      enumMap: _WorktimeLapseEnumValueMap,
    )
  },
  estimateSize: _workEstimateSize,
  serialize: _workSerialize,
  deserialize: _workDeserialize,
  deserializeProp: _workDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _workGetId,
  getLinks: _workGetLinks,
  attach: _workAttach,
  version: '3.1.0+1',
);

int _workEstimateSize(
  Work object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _workSerialize(
  Work object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeInt(offsets[0], object.fee);
  writer.writeByte(offsets[1], object.timeLapse.index);
}

Work _workDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Work();
  object.fee = reader.readInt(offsets[0]);
  object.id = id;
  object.timeLapse =
      _WorktimeLapseValueEnumMap[reader.readByteOrNull(offsets[1])] ??
          TimeLapse.hr;
  return object;
}

P _workDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readInt(offset)) as P;
    case 1:
      return (_WorktimeLapseValueEnumMap[reader.readByteOrNull(offset)] ??
          TimeLapse.hr) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _WorktimeLapseEnumValueMap = {
  'hr': 0,
  'mn': 1,
};
const _WorktimeLapseValueEnumMap = {
  0: TimeLapse.hr,
  1: TimeLapse.mn,
};

Id _workGetId(Work object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _workGetLinks(Work object) {
  return [];
}

void _workAttach(IsarCollection<dynamic> col, Id id, Work object) {
  object.id = id;
}

extension WorkQueryWhereSort on QueryBuilder<Work, Work, QWhere> {
  QueryBuilder<Work, Work, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WorkQueryWhere on QueryBuilder<Work, Work, QWhereClause> {
  QueryBuilder<Work, Work, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Work, Work, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Work, Work, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Work, Work, QAfterWhereClause> idBetween(
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

extension WorkQueryFilter on QueryBuilder<Work, Work, QFilterCondition> {
  QueryBuilder<Work, Work, QAfterFilterCondition> feeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fee',
        value: value,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterFilterCondition> feeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fee',
        value: value,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterFilterCondition> feeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fee',
        value: value,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterFilterCondition> feeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fee',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Work, Work, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Work, Work, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Work, Work, QAfterFilterCondition> timeLapseEqualTo(
      TimeLapse value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timeLapse',
        value: value,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterFilterCondition> timeLapseGreaterThan(
    TimeLapse value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timeLapse',
        value: value,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterFilterCondition> timeLapseLessThan(
    TimeLapse value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timeLapse',
        value: value,
      ));
    });
  }

  QueryBuilder<Work, Work, QAfterFilterCondition> timeLapseBetween(
    TimeLapse lower,
    TimeLapse upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timeLapse',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WorkQueryObject on QueryBuilder<Work, Work, QFilterCondition> {}

extension WorkQueryLinks on QueryBuilder<Work, Work, QFilterCondition> {}

extension WorkQuerySortBy on QueryBuilder<Work, Work, QSortBy> {
  QueryBuilder<Work, Work, QAfterSortBy> sortByFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fee', Sort.asc);
    });
  }

  QueryBuilder<Work, Work, QAfterSortBy> sortByFeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fee', Sort.desc);
    });
  }

  QueryBuilder<Work, Work, QAfterSortBy> sortByTimeLapse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeLapse', Sort.asc);
    });
  }

  QueryBuilder<Work, Work, QAfterSortBy> sortByTimeLapseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeLapse', Sort.desc);
    });
  }
}

extension WorkQuerySortThenBy on QueryBuilder<Work, Work, QSortThenBy> {
  QueryBuilder<Work, Work, QAfterSortBy> thenByFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fee', Sort.asc);
    });
  }

  QueryBuilder<Work, Work, QAfterSortBy> thenByFeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fee', Sort.desc);
    });
  }

  QueryBuilder<Work, Work, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Work, Work, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Work, Work, QAfterSortBy> thenByTimeLapse() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeLapse', Sort.asc);
    });
  }

  QueryBuilder<Work, Work, QAfterSortBy> thenByTimeLapseDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timeLapse', Sort.desc);
    });
  }
}

extension WorkQueryWhereDistinct on QueryBuilder<Work, Work, QDistinct> {
  QueryBuilder<Work, Work, QDistinct> distinctByFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fee');
    });
  }

  QueryBuilder<Work, Work, QDistinct> distinctByTimeLapse() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timeLapse');
    });
  }
}

extension WorkQueryProperty on QueryBuilder<Work, Work, QQueryProperty> {
  QueryBuilder<Work, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Work, int, QQueryOperations> feeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fee');
    });
  }

  QueryBuilder<Work, TimeLapse, QQueryOperations> timeLapseProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timeLapse');
    });
  }
}
