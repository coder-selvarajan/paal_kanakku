import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:isar/isar.dart';
import 'package:paal_kanakku/models/service.dart';
import 'package:paal_kanakku/screens/EmojiPicker.dart';
import 'package:weekday_selector/weekday_selector.dart';

import '../models/isar_service.dart';

class AddService extends StatefulWidget {
  AddService({Key? key}) : super(key: key);

  @override
  State<AddService> createState() => _AddServiceState();
}

class _AddServiceState extends State<AddService> {
  bool showEmojiPicker = false;
  String selectedEmoji = "💁🏻‍♀️";
  String serviceName = "";
  String personName = "";
  String serviceCharge = "";
  String serviceChargePerPeriod = "";
  String paidHolidaysPerMonth = "0";
  // List<ServiceEntryOption> serviceEntryOptions = ServiceEntry.values.map((e) {
  //   return ServiceEntryOption();
  // }).toList();

  String notes = "";
  List<String> weekdays = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  bool isHalfDayChecked = true;
  bool isFullDayChecked = true;

  // final values = List.filled(7, false, growable: false)..[7 % 7] = true;
  final weekoffValues = [true, false, false, false, false, false, false];

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blueAccent;
    }
    return Colors.blueAccent;
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80), //height of appbar
        child: Container(
          color: Colors.lightBlue,
          child: Column(
            children: [
              AppBar(
                // toolbarHeight: 80.0,
                backgroundColor: Colors.lightBlue,
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // Text("📖"),
                    // const SizedBox(
                    //   width: 10.0,
                    // ),
                    Text("Add Service "),
                  ],
                ),
                elevation: 0,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                // child: Form(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Service Name ",
                        style: TextStyle(
                          fontSize: textTheme.titleMedium!.fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.grey.withOpacity(0.15),
                          hintText: "Ex: Baby Sitter, Cook, Maid",
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.work),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(width: 0.0, color: Colors.blue),
                          ),
                        ),
                        initialValue: serviceName,
                        onChanged: (value) {
                          serviceName = value;
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Person (if any)",
                        style: TextStyle(
                          fontSize: textTheme.titleMedium!.fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true, //<-- SEE HERE
                          fillColor: Colors.grey.withOpacity(0.15),
                          hintText: "Name of the person providing service",
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(Icons.person),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:
                                BorderSide(width: 0.0, color: Colors.blue),
                          ),
                        ),
                        initialValue: personName,
                        onChanged: (value) {
                          personName = value;
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: [
                          Text(
                            "Choose Your Icon  ",
                            style: TextStyle(
                              fontSize: textTheme.titleMedium!.fontSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Container(
                            // margin: EdgeInsets.all(5.0),
                            height: 50.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  showEmojiPicker = !showEmojiPicker;
                                });
                              },
                              child: Text(
                                selectedEmoji,
                                style: TextStyle(fontSize: 30.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Service Charge ",
                                  style: TextStyle(
                                    fontSize: textTheme.titleMedium!.fontSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  decoration: InputDecoration(
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.grey.withOpacity(0.2),
                                    hintText: "1000, 5000",
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(Icons.currency_rupee),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          width: 0.0, color: Colors.blue),
                                    ),
                                  ),
                                  initialValue: serviceCharge,
                                  onChanged: (value) {
                                    serviceCharge = value;
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Per Period",
                                  style: TextStyle(
                                    fontSize: textTheme.titleMedium!.fontSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFormField(
                                  keyboardType: TextInputType.numberWithOptions(
                                      decimal: true),
                                  decoration: InputDecoration(
                                    filled: true, //<-- SEE HERE
                                    fillColor: Colors.grey.withOpacity(0.2),
                                    hintText: "Month, Day",
                                    prefixIcon: const Padding(
                                      padding: EdgeInsets.all(5.0),
                                      child: Icon(Icons.calendar_month),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide(
                                          width: 0.0, color: Colors.blue),
                                    ),
                                  ),
                                  initialValue: serviceChargePerPeriod,
                                  onChanged: (value) {
                                    serviceChargePerPeriod = value;
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      ExpansionTile(
                        title: Text(
                          'Additional Information',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_drop_down,
                          size: 35.0,
                        ),
                        tilePadding: EdgeInsets.zero,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Week off:",
                                style: TextStyle(
                                  fontSize: textTheme.titleMedium!.fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              WeekdaySelector(
                                onChanged: (int day) {
                                  setState(() {
                                    // Use module % 7 as Sunday's index in the array is 0 and
                                    // DateTime.sunday constant integer value is 7.
                                    final index = day % 7;
                                    // We "flip" the value in this example, but you may also
                                    // perform validation, a DB write, an HTTP call or anything
                                    // else before you actually flip the value,
                                    // it's up to your app's needs.
                                    weekoffValues[index] =
                                        !weekoffValues[index];
                                  });
                                },
                                values: weekoffValues,
                                color: Colors.black,
                                fillColor: Colors.grey[200],
                                selectedFillColor: Colors.redAccent,
                                shortWeekdays: const [
                                  "Sun",
                                  "Mon",
                                  "Tue",
                                  "Wed",
                                  "Thu",
                                  "Fri",
                                  "Sat",
                                ],
                              ),
                              // TextFormField(
                              //   decoration: InputDecoration(
                              //     filled: true, //<-- SEE HERE
                              //     fillColor: Colors.grey.withOpacity(0.15),
                              //     hintText: "Ex: Saturday, Sunday",
                              //     prefixIcon: const Padding(
                              //       padding: EdgeInsets.all(5.0),
                              //       child: Icon(Icons.date_range_outlined),
                              //     ),
                              //     enabledBorder: UnderlineInputBorder(
                              //       borderSide: BorderSide(color: Colors.white),
                              //       borderRadius: BorderRadius.circular(10.0),
                              //     ),
                              //     focusedBorder: UnderlineInputBorder(
                              //       borderRadius: BorderRadius.circular(10.0),
                              //       borderSide: BorderSide(
                              //           width: 0.0, color: Colors.blue),
                              //     ),
                              //   ),
                              //   initialValue: weekoff,
                              //   onChanged: (value) {
                              //     weekoff = value;
                              //   },
                              // ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Paid Holidays/Month:",
                                style: TextStyle(
                                  fontSize: textTheme.titleMedium!.fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true, //<-- SEE HERE
                                  fillColor: Colors.grey.withOpacity(0.15),
                                  hintText: "Ex: 2, 4",
                                  prefixIcon: const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(Icons.calendar_month),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 0.0, color: Colors.blue),
                                  ),
                                ),
                                initialValue: paidHolidaysPerMonth,
                                onChanged: (value) {
                                  paidHolidaysPerMonth = value;
                                },
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Note: If week-off is set then this will be considered as the additional holidays, otherwise this represents the allowed holidays/month for the service.",
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Text(
                                "Service Entry Options: ",
                                style: TextStyle(
                                  fontSize: textTheme.titleMedium!.fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.15),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      checkColor: Colors.white,
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isHalfDayChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isHalfDayChecked = value!;
                                        });
                                      },
                                    ),
                                    Text("Half Day"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Checkbox(
                                      checkColor: Colors.white,
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: isFullDayChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          isFullDayChecked = value!;
                                        });
                                      },
                                    ),
                                    Text("Full Day"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Notes ",
                                style: TextStyle(
                                  fontSize: textTheme.titleMedium!.fontSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                maxLines: 3,
                                keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                  filled: true, //<-- SEE HERE
                                  fillColor: Colors.grey.withOpacity(0.2),
                                  hintText: "",
                                  // prefixIcon: const Padding(
                                  //   padding: EdgeInsets.all(8.0),
                                  //   child: Icon(Icons.edit_rounded),
                                  // ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(
                                        width: 0.0, color: Colors.blue),
                                  ),
                                ),
                                onChanged: (value) {
                                  notes = value;
                                },
                              ),
                              const SizedBox(height: 20.0),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightBlueAccent,
                          textStyle: const TextStyle(
                              fontSize: 20, color: Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        onPressed: () {
                          if (serviceName.isNotEmpty &&
                              personName.isNotEmpty &&
                              serviceCharge.isNotEmpty &&
                              serviceChargePerPeriod.isNotEmpty) {
                            List<String> selectedWeekoff = <String>[""];
                            selectedWeekoff =
                                weekoffValues.asMap().entries.map((e) {
                              int idx = e.key;
                              if (e.value == true) {
                                return weekdays[idx];
                              }
                            }).toList() as List<String>;

                            IsarService().saveService(Service()
                              ..serviceName = serviceName
                              ..personName = personName
                              ..icon = selectedEmoji
                              ..servicePrice = serviceCharge as double
                              ..servicePricePeriod = serviceChargePerPeriod
                              ..weekoff = selectedWeekoff
                              ..paidHolidaysPerMonth = paidHolidaysPerMonth);
                            // IsarService().saveProvision(Provision()
                            //   ..name = provisionName
                            //   ..icon = selectedEmoji
                            //   ..notes = notes
                            //   ..unit = double.parse(unit)
                            //   ..unitPrice = double.parse(unitPrice)
                            //   ..unitMeasurementWord = unitMeasurementWord
                            //   ..minUnitPerDay = double.parse(minUnitPerDay)
                            //   ..maxUnitPerDay = double.parse(maxUnitPerDay)
                            //   ..timestamp = DateTime.now());

                            Navigator.pop(context);
                          } else {
                            //validation alert here
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: const Text('Invalid Input!'),
                                content: const Text(
                                    'Name, Unit, UnitPrice, MeasurementWord are required'),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(15.0))),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('Save Service'),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
                // ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Spacer(),
            Offstage(
              offstage: !showEmojiPicker,
              child: SizedBox(
                  height: 300,
                  child: EmojiPicker(
                    onEmojiSelected: (category, emoji) {
                      // _controller.text = emoji.emoji;
                      setState(() {
                        selectedEmoji = emoji.emoji;
                        showEmojiPicker = !showEmojiPicker;
                      });
                    },
                    // textEditingController: _controller,
                    config: Config(
                      columns: 7,
                      // Issue: https://github.com/flutter/flutter/issues/28894
                      emojiSizeMax: 32 *
                          (foundation.defaultTargetPlatform ==
                                  TargetPlatform.iOS
                              ? 1.30
                              : 1.0),
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      gridPadding: EdgeInsets.zero,
                      initCategory: Category.SMILEYS,
                      bgColor: const Color(0xFFF2F2F2),
                      indicatorColor: Colors.blue,
                      iconColor: Colors.grey,
                      iconColorSelected: Colors.blue,
                      backspaceColor: Colors.blue,
                      skinToneDialogBgColor: Colors.white,
                      skinToneIndicatorColor: Colors.grey,
                      enableSkinTones: true,
                      showRecentsTab: true,
                      recentsLimit: 28,
                      replaceEmojiOnLimitExceed: false,
                      noRecents: const Text(
                        'No Recents',
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                        textAlign: TextAlign.center,
                      ),
                      loadingIndicator: const SizedBox.shrink(),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.CUPERTINO,
                      checkPlatformCompatibility: true,
                    ),
                  )),
            ),
          ],
        ),
      ]),
    );
  }
}
