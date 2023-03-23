// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetServiceCollection on Isar {
  IsarCollection<Service> get services => this.collection();
}

const ServiceSchema = CollectionSchema(
  name: r'Service',
  id: 5821490378584524423,
  properties: {
    r'icon': PropertySchema(
      id: 0,
      name: r'icon',
      type: IsarType.string,
    ),
    r'notes': PropertySchema(
      id: 1,
      name: r'notes',
      type: IsarType.string,
    ),
    r'paidHolidaysPerMonth': PropertySchema(
      id: 2,
      name: r'paidHolidaysPerMonth',
      type: IsarType.string,
    ),
    r'personName': PropertySchema(
      id: 3,
      name: r'personName',
      type: IsarType.string,
    ),
    r'serviceEntryOptions': PropertySchema(
      id: 4,
      name: r'serviceEntryOptions',
      type: IsarType.objectList,
      target: r'ServiceEntryOption',
    ),
    r'serviceName': PropertySchema(
      id: 5,
      name: r'serviceName',
      type: IsarType.string,
    ),
    r'servicePrice': PropertySchema(
      id: 6,
      name: r'servicePrice',
      type: IsarType.double,
    ),
    r'servicePricePeriod': PropertySchema(
      id: 7,
      name: r'servicePricePeriod',
      type: IsarType.string,
    ),
    r'timestamp': PropertySchema(
      id: 8,
      name: r'timestamp',
      type: IsarType.dateTime,
    ),
    r'weekoff': PropertySchema(
      id: 9,
      name: r'weekoff',
      type: IsarType.stringList,
    )
  },
  estimateSize: _serviceEstimateSize,
  serialize: _serviceSerialize,
  deserialize: _serviceDeserialize,
  deserializeProp: _serviceDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'ServiceEntryOption': ServiceEntryOptionSchema},
  getId: _serviceGetId,
  getLinks: _serviceGetLinks,
  attach: _serviceAttach,
  version: '3.0.5',
);

int _serviceEstimateSize(
  Service object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.icon.length * 3;
  bytesCount += 3 + object.notes.length * 3;
  bytesCount += 3 + object.paidHolidaysPerMonth.length * 3;
  bytesCount += 3 + object.personName.length * 3;
  bytesCount += 3 + object.serviceEntryOptions.length * 3;
  {
    final offsets = allOffsets[ServiceEntryOption]!;
    for (var i = 0; i < object.serviceEntryOptions.length; i++) {
      final value = object.serviceEntryOptions[i];
      bytesCount +=
          ServiceEntryOptionSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.serviceName.length * 3;
  bytesCount += 3 + object.servicePricePeriod.length * 3;
  bytesCount += 3 + object.weekoff.length * 3;
  {
    for (var i = 0; i < object.weekoff.length; i++) {
      final value = object.weekoff[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _serviceSerialize(
  Service object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.icon);
  writer.writeString(offsets[1], object.notes);
  writer.writeString(offsets[2], object.paidHolidaysPerMonth);
  writer.writeString(offsets[3], object.personName);
  writer.writeObjectList<ServiceEntryOption>(
    offsets[4],
    allOffsets,
    ServiceEntryOptionSchema.serialize,
    object.serviceEntryOptions,
  );
  writer.writeString(offsets[5], object.serviceName);
  writer.writeDouble(offsets[6], object.servicePrice);
  writer.writeString(offsets[7], object.servicePricePeriod);
  writer.writeDateTime(offsets[8], object.timestamp);
  writer.writeStringList(offsets[9], object.weekoff);
}

Service _serviceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Service();
  object.icon = reader.readString(offsets[0]);
  object.id = id;
  object.notes = reader.readString(offsets[1]);
  object.paidHolidaysPerMonth = reader.readString(offsets[2]);
  object.personName = reader.readString(offsets[3]);
  object.serviceEntryOptions = reader.readObjectList<ServiceEntryOption>(
        offsets[4],
        ServiceEntryOptionSchema.deserialize,
        allOffsets,
        ServiceEntryOption(),
      ) ??
      [];
  object.serviceName = reader.readString(offsets[5]);
  object.servicePrice = reader.readDouble(offsets[6]);
  object.servicePricePeriod = reader.readString(offsets[7]);
  object.timestamp = reader.readDateTime(offsets[8]);
  object.weekoff = reader.readStringList(offsets[9]) ?? [];
  return object;
}

P _serviceDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectList<ServiceEntryOption>(
            offset,
            ServiceEntryOptionSchema.deserialize,
            allOffsets,
            ServiceEntryOption(),
          ) ??
          []) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _serviceGetId(Service object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _serviceGetLinks(Service object) {
  return [];
}

void _serviceAttach(IsarCollection<dynamic> col, Id id, Service object) {
  object.id = id;
}

extension ServiceQueryWhereSort on QueryBuilder<Service, Service, QWhere> {
  QueryBuilder<Service, Service, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ServiceQueryWhere on QueryBuilder<Service, Service, QWhereClause> {
  QueryBuilder<Service, Service, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Service, Service, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Service, Service, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Service, Service, QAfterWhereClause> idBetween(
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

extension ServiceQueryFilter
    on QueryBuilder<Service, Service, QFilterCondition> {
  QueryBuilder<Service, Service, QAfterFilterCondition> iconEqualTo(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> iconGreaterThan(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> iconLessThan(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> iconBetween(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> iconStartsWith(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> iconEndsWith(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> iconContains(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> iconMatches(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> iconIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> iconIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'icon',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> notesEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paidHolidaysPerMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paidHolidaysPerMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paidHolidaysPerMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paidHolidaysPerMonth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paidHolidaysPerMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paidHolidaysPerMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paidHolidaysPerMonth',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paidHolidaysPerMonth',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paidHolidaysPerMonth',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      paidHolidaysPerMonthIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paidHolidaysPerMonth',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'personName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'personName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'personName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'personName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'personName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'personName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'personName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'personName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'personName',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> personNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'personName',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      serviceEntryOptionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serviceEntryOptions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      serviceEntryOptionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serviceEntryOptions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      serviceEntryOptionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serviceEntryOptions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      serviceEntryOptionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serviceEntryOptions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      serviceEntryOptionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serviceEntryOptions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      serviceEntryOptionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'serviceEntryOptions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serviceName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serviceName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> serviceNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceName',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      serviceNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serviceName',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> servicePriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'servicePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> servicePriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'servicePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> servicePriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'servicePrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> servicePriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'servicePrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'servicePricePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'servicePricePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'servicePricePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'servicePricePeriod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'servicePricePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'servicePricePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'servicePricePeriod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'servicePricePeriod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'servicePricePeriod',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      servicePricePeriodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'servicePricePeriod',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> timestampEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> timestampGreaterThan(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> timestampLessThan(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> timestampBetween(
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

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weekoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      weekoffElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weekoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weekoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weekoff',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      weekoffElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weekoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weekoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weekoff',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weekoff',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      weekoffElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weekoff',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      weekoffElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weekoff',
        value: '',
      ));
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekoff',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekoff',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekoff',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekoff',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition>
      weekoffLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekoff',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Service, Service, QAfterFilterCondition> weekoffLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'weekoff',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension ServiceQueryObject
    on QueryBuilder<Service, Service, QFilterCondition> {
  QueryBuilder<Service, Service, QAfterFilterCondition>
      serviceEntryOptionsElement(FilterQuery<ServiceEntryOption> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'serviceEntryOptions');
    });
  }
}

extension ServiceQueryLinks
    on QueryBuilder<Service, Service, QFilterCondition> {}

extension ServiceQuerySortBy on QueryBuilder<Service, Service, QSortBy> {
  QueryBuilder<Service, Service, QAfterSortBy> sortByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByPaidHolidaysPerMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidHolidaysPerMonth', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy>
      sortByPaidHolidaysPerMonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidHolidaysPerMonth', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByPersonName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personName', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByPersonNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personName', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByServiceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceName', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByServiceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceName', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByServicePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'servicePrice', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByServicePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'servicePrice', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByServicePricePeriod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'servicePricePeriod', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByServicePricePeriodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'servicePricePeriod', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension ServiceQuerySortThenBy
    on QueryBuilder<Service, Service, QSortThenBy> {
  QueryBuilder<Service, Service, QAfterSortBy> thenByIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'icon', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByPaidHolidaysPerMonth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidHolidaysPerMonth', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy>
      thenByPaidHolidaysPerMonthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidHolidaysPerMonth', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByPersonName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personName', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByPersonNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personName', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByServiceName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceName', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByServiceNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceName', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByServicePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'servicePrice', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByServicePriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'servicePrice', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByServicePricePeriod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'servicePricePeriod', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByServicePricePeriodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'servicePricePeriod', Sort.desc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<Service, Service, QAfterSortBy> thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }
}

extension ServiceQueryWhereDistinct
    on QueryBuilder<Service, Service, QDistinct> {
  QueryBuilder<Service, Service, QDistinct> distinctByIcon(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'icon', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Service, Service, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Service, Service, QDistinct> distinctByPaidHolidaysPerMonth(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paidHolidaysPerMonth',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Service, Service, QDistinct> distinctByPersonName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Service, Service, QDistinct> distinctByServiceName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Service, Service, QDistinct> distinctByServicePrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'servicePrice');
    });
  }

  QueryBuilder<Service, Service, QDistinct> distinctByServicePricePeriod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'servicePricePeriod',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Service, Service, QDistinct> distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }

  QueryBuilder<Service, Service, QDistinct> distinctByWeekoff() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weekoff');
    });
  }
}

extension ServiceQueryProperty
    on QueryBuilder<Service, Service, QQueryProperty> {
  QueryBuilder<Service, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Service, String, QQueryOperations> iconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'icon');
    });
  }

  QueryBuilder<Service, String, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<Service, String, QQueryOperations>
      paidHolidaysPerMonthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paidHolidaysPerMonth');
    });
  }

  QueryBuilder<Service, String, QQueryOperations> personNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personName');
    });
  }

  QueryBuilder<Service, List<ServiceEntryOption>, QQueryOperations>
      serviceEntryOptionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceEntryOptions');
    });
  }

  QueryBuilder<Service, String, QQueryOperations> serviceNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceName');
    });
  }

  QueryBuilder<Service, double, QQueryOperations> servicePriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'servicePrice');
    });
  }

  QueryBuilder<Service, String, QQueryOperations> servicePricePeriodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'servicePricePeriod');
    });
  }

  QueryBuilder<Service, DateTime, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }

  QueryBuilder<Service, List<String>, QQueryOperations> weekoffProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weekoff');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

const ServiceEntryOptionSchema = Schema(
  name: r'ServiceEntryOption',
  id: -6889676600452597501,
  properties: {
    r'selected': PropertySchema(
      id: 0,
      name: r'selected',
      type: IsarType.bool,
    ),
    r'serviceEntry': PropertySchema(
      id: 1,
      name: r'serviceEntry',
      type: IsarType.string,
      enumMap: _ServiceEntryOptionserviceEntryEnumValueMap,
    )
  },
  estimateSize: _serviceEntryOptionEstimateSize,
  serialize: _serviceEntryOptionSerialize,
  deserialize: _serviceEntryOptionDeserialize,
  deserializeProp: _serviceEntryOptionDeserializeProp,
);

int _serviceEntryOptionEstimateSize(
  ServiceEntryOption object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.serviceEntry.name.length * 3;
  return bytesCount;
}

void _serviceEntryOptionSerialize(
  ServiceEntryOption object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.selected);
  writer.writeString(offsets[1], object.serviceEntry.name);
}

ServiceEntryOption _serviceEntryOptionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ServiceEntryOption();
  object.selected = reader.readBool(offsets[0]);
  object.serviceEntry = _ServiceEntryOptionserviceEntryValueEnumMap[
          reader.readStringOrNull(offsets[1])] ??
      ServiceEntry.noService;
  return object;
}

P _serviceEntryOptionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (_ServiceEntryOptionserviceEntryValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ServiceEntry.noService) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ServiceEntryOptionserviceEntryEnumValueMap = {
  r'noService': r'noService',
  r'halfDay': r'halfDay',
  r'fullDay': r'fullDay',
};
const _ServiceEntryOptionserviceEntryValueEnumMap = {
  r'noService': ServiceEntry.noService,
  r'halfDay': ServiceEntry.halfDay,
  r'fullDay': ServiceEntry.fullDay,
};

extension ServiceEntryOptionQueryFilter
    on QueryBuilder<ServiceEntryOption, ServiceEntryOption, QFilterCondition> {
  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      selectedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selected',
        value: value,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryEqualTo(
    ServiceEntry value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceEntry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryGreaterThan(
    ServiceEntry value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceEntry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryLessThan(
    ServiceEntry value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceEntry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryBetween(
    ServiceEntry lower,
    ServiceEntry upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceEntry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serviceEntry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serviceEntry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serviceEntry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serviceEntry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceEntry',
        value: '',
      ));
    });
  }

  QueryBuilder<ServiceEntryOption, ServiceEntryOption, QAfterFilterCondition>
      serviceEntryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serviceEntry',
        value: '',
      ));
    });
  }
}

extension ServiceEntryOptionQueryObject
    on QueryBuilder<ServiceEntryOption, ServiceEntryOption, QFilterCondition> {}
