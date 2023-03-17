import 'dart:ffi';

import 'package:isar/isar.dart';
part 'provision.g.dart';

@Collection()
class Provision {
  Id id = Isar.autoIncrement;
  late String name;
  late String icon;
  late int measurement;
  late String measurementWord; //Litre, KG, Kattu, Cane
  late String shortMeasurementWord; //L, K, Item, Cane
  late double price;
  late int minimalMeasurementPerDay; //0.25, 0.5, 1
  late int maximumMeasurementPerDay; //10, 20
  late String description;
  late DateTime timestamp;
}
