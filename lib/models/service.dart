import 'dart:ffi';

import 'package:isar/isar.dart';
part 'service.g.dart';

@Collection()
class Service {
  Id id = Isar.autoIncrement;
  late String serviceType;
  late String name;
  late String icon;
  late double pricePerDay;
  late DateTime timestamp;
}
