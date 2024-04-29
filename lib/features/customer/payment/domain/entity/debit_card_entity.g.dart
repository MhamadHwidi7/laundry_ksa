// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debit_card_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDebitCardEntityCollection on Isar {
  IsarCollection<DebitCardEntity> get debitCardEntitys => this.collection();
}

const DebitCardEntitySchema = CollectionSchema(
  name: r'DebitCardEntity',
  id: 2098030881462478006,
  properties: {
    r'cardExpDate': PropertySchema(
      id: 0,
      name: r'cardExpDate',
      type: IsarType.dateTime,
    ),
    r'cardNumber': PropertySchema(
      id: 1,
      name: r'cardNumber',
      type: IsarType.long,
    ),
    r'cvvCode': PropertySchema(
      id: 2,
      name: r'cvvCode',
      type: IsarType.long,
    ),
    r'holderName': PropertySchema(
      id: 3,
      name: r'holderName',
      type: IsarType.string,
    )
  },
  estimateSize: _debitCardEntityEstimateSize,
  serialize: _debitCardEntitySerialize,
  deserialize: _debitCardEntityDeserialize,
  deserializeProp: _debitCardEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'holderName': IndexSchema(
      id: 8255065684844615565,
      name: r'holderName',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'holderName',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _debitCardEntityGetId,
  getLinks: _debitCardEntityGetLinks,
  attach: _debitCardEntityAttach,
  version: '3.1.0+1',
);

int _debitCardEntityEstimateSize(
  DebitCardEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.holderName.length * 3;
  return bytesCount;
}

void _debitCardEntitySerialize(
  DebitCardEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.cardExpDate);
  writer.writeLong(offsets[1], object.cardNumber);
  writer.writeLong(offsets[2], object.cvvCode);
  writer.writeString(offsets[3], object.holderName);
}

DebitCardEntity _debitCardEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DebitCardEntity(
    cardExpDate: reader.readDateTime(offsets[0]),
    cardNumber: reader.readLong(offsets[1]),
    cvvCode: reader.readLong(offsets[2]),
    holderName: reader.readString(offsets[3]),
  );
  object.id = id;
  return object;
}

P _debitCardEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _debitCardEntityGetId(DebitCardEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _debitCardEntityGetLinks(DebitCardEntity object) {
  return [];
}

void _debitCardEntityAttach(
    IsarCollection<dynamic> col, Id id, DebitCardEntity object) {
  object.id = id;
}

extension DebitCardEntityQueryWhereSort
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QWhere> {
  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DebitCardEntityQueryWhere
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QWhereClause> {
  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterWhereClause> idBetween(
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

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterWhereClause>
      holderNameEqualTo(String holderName) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'holderName',
        value: [holderName],
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterWhereClause>
      holderNameNotEqualTo(String holderName) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'holderName',
              lower: [],
              upper: [holderName],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'holderName',
              lower: [holderName],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'holderName',
              lower: [holderName],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'holderName',
              lower: [],
              upper: [holderName],
              includeUpper: false,
            ));
      }
    });
  }
}

extension DebitCardEntityQueryFilter
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QFilterCondition> {
  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cardExpDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardExpDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cardExpDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardExpDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cardExpDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardExpDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cardExpDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardExpDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cardNumberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cardNumberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cardNumberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cardNumberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cvvCodeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cvvCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cvvCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cvvCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cvvCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cvvCode',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      cvvCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cvvCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'holderName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'holderName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'holderName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holderName',
        value: '',
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      holderNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'holderName',
        value: '',
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
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

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
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

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterFilterCondition>
      idBetween(
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
}

extension DebitCardEntityQueryObject
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QFilterCondition> {}

extension DebitCardEntityQueryLinks
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QFilterCondition> {}

extension DebitCardEntityQuerySortBy
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QSortBy> {
  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      sortByCardExpDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardExpDate', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      sortByCardExpDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardExpDate', Sort.desc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      sortByCardNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardNumber', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      sortByCardNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardNumber', Sort.desc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy> sortByCvvCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvvCode', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      sortByCvvCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvvCode', Sort.desc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      sortByHolderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holderName', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      sortByHolderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holderName', Sort.desc);
    });
  }
}

extension DebitCardEntityQuerySortThenBy
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QSortThenBy> {
  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      thenByCardExpDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardExpDate', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      thenByCardExpDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardExpDate', Sort.desc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      thenByCardNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardNumber', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      thenByCardNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardNumber', Sort.desc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy> thenByCvvCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvvCode', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      thenByCvvCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cvvCode', Sort.desc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      thenByHolderName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holderName', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy>
      thenByHolderNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holderName', Sort.desc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension DebitCardEntityQueryWhereDistinct
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QDistinct> {
  QueryBuilder<DebitCardEntity, DebitCardEntity, QDistinct>
      distinctByCardExpDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardExpDate');
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QDistinct>
      distinctByCardNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardNumber');
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QDistinct>
      distinctByCvvCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cvvCode');
    });
  }

  QueryBuilder<DebitCardEntity, DebitCardEntity, QDistinct>
      distinctByHolderName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'holderName', caseSensitive: caseSensitive);
    });
  }
}

extension DebitCardEntityQueryProperty
    on QueryBuilder<DebitCardEntity, DebitCardEntity, QQueryProperty> {
  QueryBuilder<DebitCardEntity, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DebitCardEntity, DateTime, QQueryOperations>
      cardExpDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardExpDate');
    });
  }

  QueryBuilder<DebitCardEntity, int, QQueryOperations> cardNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardNumber');
    });
  }

  QueryBuilder<DebitCardEntity, int, QQueryOperations> cvvCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cvvCode');
    });
  }

  QueryBuilder<DebitCardEntity, String, QQueryOperations> holderNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'holderName');
    });
  }
}
