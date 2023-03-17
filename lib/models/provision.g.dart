// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provision.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetProvisionCollection on Isar {
  IsarCollection<Provision> get provisions => this.collection();
}

const ProvisionSchema = CollectionSchema(
  name: r'Provision',
  id: 8475410124999712260,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'icon': PropertySchema(
      id: 1,
      name: r'icon',
      type: IsarType.string,
    ),
    r'maximumMeasurementPerDay': PropertySchema(
      id: 2,
      name: r'maximumMeasurementPerDay',
      type: IsarType.long,
    ),
    r'measurement': PropertySchema(
      id: 3,
      name: r'measurement',
      type: IsarType.long,
    ),
    r'measurementWord': PropertySchema(
      id: 4,
      name: r'measurementWord',
      type: IsarType.string,
    ),
    r'minimalMeasurementPerDay': PropertySchema(
      id: 5,
      name: r'minimalMeasurementPerDay',
      type: IsarType.long,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 7,
      name: r'price',
      type: IsarType.double,
    ),
    r'shortMeasurementWord': PropertySchema(
      id: 8,
      name: r'shortMeasurementWord',
      type: IsarType.string,
    ),
    r'timestamp': PropertySchema(
      id: 9,
      name: r'timestamp',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _provisionEstimateSize,
  serialize: _provisionSerialize,
  deserialize: _provisionDeserialize,
  deserializeProp: _provisionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _provisionGetId,
  getLinks: _provisionGetLinks,
  attach: _provisionAttach,
  version: '3.0.5',
);

int _provisionEstimateSize(
  Provision object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.icon.length * 3;
  bytesCount += 3 + object.measurementWord.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.shortMeasurementWord.length * 3;
  return bytesCount;
}

void _provisionSerialize(
  Provision object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeString(offsets[1], object.icon);
  writer.writeLong(offsets[2], object.maximumMeasurementPerDay);
  writer.writeLong(offsets[3], object.measurement);
  writer.writeString(offsets[4], object.measurementWord);
  writer.writeLong(offsets[5], object.minimalMeasurementPerDay);
  writer.writeString(offsets[6], object.name);
  writer.writeDouble(offsets[7], object.price);
  writer.writeString(offsets[8], object.shortMeasurementWord);
  writer.writeDateTime(offsets[9], object.timestamp);
}

Provision _provisionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Provision();
  object.description = reader.readString(offsets[0]);
  object.icon = reader.readString(offsets[1]);
  object.id = id;
  object.maximumMeasurementPerDay = reader.readLong(offsets[2]);
  object.measurement = reader.readLong(offsets[3]);
  object.measurementWord = reader.readString(offsets[4]);
  object.minimalMeasurementPerDay = reader.readLong(offsets[5]);
  object.name = reader.readString(offsets[6]);
  object.price = reader.readDouble(offsets[7]);
  object.shortMeasurementWord = reader.readString(offsets[8]);
  object.timestamp = reader.readDateTime(offsets[9]);
  return object;
}

P _provisionDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _provisionGetId(Provision object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _provisionGetLinks(Provision object) {
  return [];
}

void _provisionAttach(IsarCollection<dynamic> col, Id id, Provision object) {
  object.id = id;
}

extension ProvisionQueryWhereSort
    on QueryBuilder<Provision, Provision, QWhere> {
  QueryBuilder<Provision, Provision, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProvisionQueryWhere
    on QueryBuilder<Provision, Provision, QWhereClause> {
  QueryBuilder<Provision, Provision, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Provision, Provision, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Provision, Provision, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Provision, Provision, QAfterWhereClause> idBetween(
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

extension ProvisionQueryFilter
    on QueryBuilder<Provision, Provision, QFilterCondition> {
  QueryBuilder<Provision, Provision, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'icon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'icon',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'icon',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      maximumMeasurementPerDayEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maximumMeasurementPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      maximumMeasurementPerDayGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maximumMeasurementPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      maximumMeasurementPerDayLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maximumMeasurementPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      maximumMeasurementPerDayBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maximumMeasurementPerDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> measurementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurement',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'measurement',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> measurementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'measurement',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> measurementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'measurement',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'measurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'measurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'measurementWord',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'measurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'measurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'measurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'measurementWord',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'measurementWord',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      measurementWordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'measurementWord',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      minimalMeasurementPerDayEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minimalMeasurementPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      minimalMeasurementPerDayGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minimalMeasurementPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      minimalMeasurementPerDayLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minimalMeasurementPerDay',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      minimalMeasurementPerDayBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minimalMeasurementPerDay',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameContains(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> priceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> priceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> priceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> priceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortMeasurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shortMeasurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shortMeasurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shortMeasurementWord',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shortMeasurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shortMeasurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shortMeasurementWord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shortMeasurementWord',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shortMeasurementWord',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      shortMeasurementWordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shortMeasurementWord',
        value: '',
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> timestampEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition>
      timestampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> timestampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<Provision, Provision, QAfterFilterCondition> timestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ProvisionQueryObject
    on QueryBuilder<Provision, Provision, QFilterCondition> {}

extension ProvisionQueryLinks
    on QueryBuilder<Provision, Provision, QFilterCondition> {}

extension ProvisionQuerySortBy on QueryBuilder<Provision, Provision, QSortBy> {
  QueryBuilder<Provision, Provision, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      sortByMaximumMeasurementPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximumMeasurementPerDay', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      sortByMaximumMeasurementPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximumMeasurementPerDay', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByMeasurement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurement', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByMeasurementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurement', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByMeasurementWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurementWord', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByMeasurementWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurementWord', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      sortByMinimalMeasurementPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimalMeasurementPerDay', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      sortByMinimalMeasurementPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimalMeasurementPerDay', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      sortByShortMeasurementWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortMeasurementWord', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      sortByShortMeasurementWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortMeasurementWord', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension ProvisionQuerySortThenBy
    on QueryBuilder<Provision, Provision, QSortThenBy> {
  QueryBuilder<Provision, Provision, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      thenByMaximumMeasurementPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximumMeasurementPerDay', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      thenByMaximumMeasurementPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maximumMeasurementPerDay', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByMeasurement() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurement', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByMeasurementDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurement', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByMeasurementWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurementWord', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByMeasurementWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'measurementWord', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      thenByMinimalMeasurementPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimalMeasurementPerDay', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      thenByMinimalMeasurementPerDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minimalMeasurementPerDay', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      thenByShortMeasurementWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortMeasurementWord', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy>
      thenByShortMeasurementWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shortMeasurementWord', Sort.desc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<Provision, Provision, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension ProvisionQueryWhereDistinct
    on QueryBuilder<Provision, Provision, QDistinct> {
  QueryBuilder<Provision, Provision, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Provision, Provision, QDistinct> distinctByIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Provision, Provision, QDistinct>
      distinctByMaximumMeasurementPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maximumMeasurementPerDay');
    });
  }

  QueryBuilder<Provision, Provision, QDistinct> distinctByMeasurement() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'measurement');
    });
  }

  QueryBuilder<Provision, Provision, QDistinct> distinctByMeasurementWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'measurementWord',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Provision, Provision, QDistinct>
      distinctByMinimalMeasurementPerDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minimalMeasurementPerDay');
    });
  }

  QueryBuilder<Provision, Provision, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Provision, Provision, QDistinct> distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<Provision, Provision, QDistinct> distinctByShortMeasurementWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shortMeasurementWord',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Provision, Provision, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }
}

extension ProvisionQueryProperty
    on QueryBuilder<Provision, Provision, QQueryProperty> {
  QueryBuilder<Provision, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Provision, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Provision, String, QQueryOperations> iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<Provision, int, QQueryOperations>
      maximumMeasurementPerDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maximumMeasurementPerDay');
    });
  }

  QueryBuilder<Provision, int, QQueryOperations> measurementProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measurement');
    });
  }

  QueryBuilder<Provision, String, QQueryOperations> measurementWordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'measurementWord');
    });
  }

  QueryBuilder<Provision, int, QQueryOperations>
      minimalMeasurementPerDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minimalMeasurementPerDay');
    });
  }

  QueryBuilder<Provision, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Provision, double, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<Provision, String, QQueryOperations>
      shortMeasurementWordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shortMeasurementWord');
    });
  }

  QueryBuilder<Provision, DateTime, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }
}
