import 'dart:ffi';

import 'package:isar/isar.dart';
part 'service.g.dart';

@Collection()
class Service {
  Id id = Isar.autoIncrement;
  late String serviceName;
  late String personName;
  late String icon;
  late double servicePrice;
  late String servicePricePeriod;
  late List<String> weekoff = List.empty(growable: true);
  late String paidHolidaysPerMonth;

  late List<ServiceEntryOption> serviceEntryOptions =
      List.empty(growable: true);
  late String notes;

  late DateTime timestamp;
}

@embedded
class ServiceEntryOption {
  @Enumerated(EnumType.name)
  late ServiceEntry serviceEntry;
  late bool selected;

  // ServiceEntryOption({required this.serviceEntry, required this.selected});
}

enum ServiceEntry {
  noService(0),
  halfDay(1),
  fullDay(2);

  const ServiceEntry(this.myValue);
  final short myValue;
}
