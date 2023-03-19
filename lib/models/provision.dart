import 'dart:ffi';

import 'package:isar/isar.dart';
part 'provision.g.dart';

@Collection()
class Provision {
  Id id = Isar.autoIncrement;
  late String name;
  late String icon;
  late double unit;
  late double unitPrice;
  late String unitMeasurementWord; //Litre, KG, Kattu, Cane
  // late String shortUnitMeasurementWord; //L, K, Item, Cane
  late double minUnitPerDay; //0.25, 0.5, 1
  late double maxUnitPerDay; //10, 20
  late String notes;
  late DateTime timestamp;
}
