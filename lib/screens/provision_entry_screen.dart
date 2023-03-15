// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../utils.dart';

class ProvisionEntryScreen extends StatefulWidget {
  final String image;
  final String provision;

  ProvisionEntryScreen({
    Key? key,
    required this.image,
    required this.provision,
  }) : super(key: key);

  @override
  _ProvisionEntryScreenState createState() => _ProvisionEntryScreenState();
}

class _ProvisionEntryScreenState extends State<ProvisionEntryScreen> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  final ValueNotifier<DateTime> _focusedDay = ValueNotifier(DateTime.now());
  final Set<DateTime> _selectedDays = LinkedHashSet<DateTime>(
    equals: isSameDay,
    hashCode: getHashCode,
  );

  late PageController _pageController;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDays.add(_focusedDay.value);
    _selectedEvents = ValueNotifier(_getEventsForDay(_focusedDay.value));
  }

  @override
  void dispose() {
    _focusedDay.dispose();
    _selectedEvents.dispose();
    super.dispose();
  }

  bool get canClearSelection =>
      _selectedDays.isNotEmpty || _rangeStart != null || _rangeEnd != null;

  List<Event> _getEventsForDay(DateTime day) {
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForDays(Iterable<DateTime> days) {
    return [
      for (final d in days) ..._getEventsForDay(d),
    ];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    final days = daysInRange(start, end);
    return _getEventsForDays(days);
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDays.clear();
      _selectedDays.add(selectedDay);

      // if (_selectedDays.contains(selectedDay)) {
      //   _selectedDays.remove(selectedDay);
      // } else {
      //   _selectedDays.add(selectedDay);
      // }

      _focusedDay.value = focusedDay;
      _rangeStart = null;
      _rangeEnd = null;
      _rangeSelectionMode = RangeSelectionMode.toggledOff;
    });

    _selectedEvents.value = _getEventsForDays(_selectedDays);
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _focusedDay.value = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _selectedDays.clear();
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
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
                    Text("📖"),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text("Daily Provisions Entry"),
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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, bottom: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          // padding: EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            // color: Colors.lightBlueAccent.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.image,
                                style: TextStyle(fontSize: 40.0),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.provision,
                                      style: TextStyle(
                                        fontSize:
                                            textTheme.titleMedium!.fontSize,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Feb 2023  ·  15L  ·  Rs 1200",
                                    style: TextStyle(
                                        fontSize: textTheme.subtitle2!.fontSize,
                                        color: Colors.black54),
                                  ),
                                ],
                              ),
                              // Text(
                              //   "Rs1200",
                              //   style: textTheme.titleLarge,
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      height: 6.0,
                    ),
                    // const SizedBox(height: 5.0),
                    // Text(
                    //   "Select a Date & Add ${widget.provision}: ",
                    //   style: TextStyle(
                    //     // color: Colors.grey,
                    //     fontSize: textTheme.titleSmall!.fontSize,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // const SizedBox(height: 5.0),
                    TableCalendar<Event>(
                      firstDay: kFirstDay,
                      lastDay: kLastDay,
                      focusedDay: _focusedDay.value,
                      headerVisible: true,
                      headerStyle: HeaderStyle(
                        titleCentered: true,
                        formatButtonVisible: true,
                      ),
                      selectedDayPredicate: (day) =>
                          _selectedDays.contains(day),
                      rangeStartDay: _rangeStart,
                      rangeEndDay: _rangeEnd,
                      calendarFormat: _calendarFormat,
                      rangeSelectionMode: _rangeSelectionMode,
                      eventLoader: _getEventsForDay,
                      availableCalendarFormats: const {
                        CalendarFormat.month: 'Month',
                        CalendarFormat.twoWeeks: '2 Weeks'
                      },
                      availableGestures: AvailableGestures.horizontalSwipe,
                      // holidayPredicate: (day) {
                      //   // Every 20th day of the month will be treated as a holiday
                      //   return day.day == 20;
                      // },
                      onDaySelected: _onDaySelected,
                      onRangeSelected: _onRangeSelected,
                      onCalendarCreated: (controller) =>
                          _pageController = controller,
                      onPageChanged: (focusedDay) =>
                          _focusedDay.value = focusedDay,
                      onFormatChanged: (format) {
                        if (_calendarFormat != format) {
                          setState(() => _calendarFormat = format);
                        }
                      },

                      calendarBuilders: CalendarBuilders(
                        todayBuilder: (context, date, events) => Container(
                          margin: EdgeInsets.all(4.0),
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Text(
                              date.day.toString(),
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.red),
                            ),
                          ),
                        ),
                        selectedBuilder: (context, date, events) => Container(
                          margin: EdgeInsets.all(4.0),
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Text(
                              date.day.toString(),
                            ),
                          ),
                        ),
                        outsideBuilder: (context, date, events) => Container(
                          margin: EdgeInsets.all(4.0),
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            // color: Colors.grey.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                color: Colors.grey.withOpacity(0.15), width: 2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Text(
                              date.day.toString(),
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey.withOpacity(0.5)),
                            ),
                          ),
                        ),
                        // markerBuilder: (context, date, events) {
                        //   return (kEvents[date]?.length! ?? 0) > 0
                        //       ? Container(
                        //           margin:
                        //               EdgeInsets.only(bottom: 6.0, right: 6.0),
                        //           alignment: Alignment.bottomRight,
                        //           height: 15,
                        //           decoration: BoxDecoration(
                        //             // color: Colors.red,
                        //             borderRadius: BorderRadius.circular(4.0),
                        //           ),
                        //           child: Row(
                        //             mainAxisAlignment: MainAxisAlignment.end,
                        //             crossAxisAlignment:
                        //                 CrossAxisAlignment.center,
                        //             children: [
                        //               Text(
                        //                 kEvents[date]?.length.toString() ?? "",
                        //                 style: TextStyle(
                        //                     color: Colors.blue, fontSize: 13.0),
                        //               ),
                        //               // SizedBox(
                        //               //   width: 1.0,
                        //               // ),
                        //               Text(
                        //                 widget.image,
                        //                 style: TextStyle(fontSize: 10.0),
                        //               ),
                        //               // Icon(
                        //               //   Icons.local_drink_rounded,
                        //               //   size: 10.0,
                        //               //   color: Colors.blue,
                        //               // ),
                        //               // CircleAvatar(
                        //               //   radius: 4.0,
                        //               //   // child: Text(""),
                        //               // ),
                        //             ],
                        //           ),
                        //         )
                        //       : SizedBox();
                        // },
                        defaultBuilder: (context, date, events) => Container(
                          margin: EdgeInsets.all(4.0),
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          // color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Text(
                              date.day.toString(),
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        // color: Colors.lightBlueAccent.withOpacity(0.15),
                        color: Colors.grey.withOpacity(0.15),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.2), width: 1),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Text(
                                  //   "Date: ",
                                  //   style: TextStyle(
                                  //     color: Colors.black45,
                                  //   ),
                                  // ),
                                  // SizedBox(
                                  //   height: 5.0,
                                  // ),
                                  Text(
                                    "Feb 27, Mon ",
                                    style: TextStyle(
                                      fontSize: textTheme.titleSmall!.fontSize,
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.lightBlueAccent,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              // Text(
                              //   "1L = Rs 60",
                              //   style: TextStyle(
                              //       color: Colors.grey,
                              //       fontSize: textTheme.caption!.fontSize),
                              // ),
                            ],
                          ),
                          Spacer(),
                          OutlinedButton(
                            onPressed: () async {},
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              side: const BorderSide(
                                  width: 1.5, color: Colors.blue),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            child: Row(
                              children: [
                                // Icon(
                                //   Icons.add,
                                //   color: Colors.white,
                                // ),
                                // SizedBox(
                                //   width: 5.0,
                                // ),
                                Text(
                                  "Add ${widget.provision}",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    ValueListenableBuilder<List<Event>>(
                      valueListenable: _selectedEvents,
                      builder: (context, value, _) {
                        if (value.length == 0) {
                          return Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text("-  No ${widget.provision} Added  -",
                                  style: TextStyle(
                                      fontSize: textTheme.subtitle1!.fontSize,
                                      color: Colors.grey)),
                            ),
                          );
                        }
                        return Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  " Entries :",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Total(1L)  =  Rs60  ",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: textTheme.caption!.fontSize,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: value.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  visualDensity: VisualDensity(
                                      horizontal: 0, vertical: -2),
                                  contentPadding: EdgeInsets.all(0.0),
                                  onTap: () => print('${value[index]}'),
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        widget.image,
                                        style: textTheme.headline6,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                          '${value[index]} ${widget.provision}'),
                                      Spacer(),
                                      Text("Rs 30"),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(
                                        Icons.close_rounded,
                                        color: Colors.redAccent,
                                        size: 20.0,
                                      ),
                                    ],
                                  ),
                                );
                              },
                              separatorBuilder: (_, id) => const Divider(
                                color: Colors.black26,
                                height: 0.0,
                              ),
                            ),
                            // Text(
                            //   "1L = Rs 60",
                            //   style: TextStyle(
                            //       color: Colors.grey,
                            //       fontSize: textTheme.caption!.fontSize),
                            // ),
                            // Divider(),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.end,
                            //   children: [
                            //     SizedBox(
                            //       height: 5,
                            //     ),
                            //     Text(
                            //       "  Total (2L)  =  Rs 60  ",
                            //       style: TextStyle(
                            //           color: Colors.grey,
                            //           fontSize: textTheme.caption!.fontSize),
                            //     ),
                            //     // Text("Rs 60"),
                            //   ],
                            // ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Container(
          //   margin:
          //       EdgeInsets.only(top: 20, left: 20.0, right: 20.0, bottom: 30.0),
          //   // width: double.infinity,
          //   padding: EdgeInsets.all(20.0),
          //   decoration: BoxDecoration(
          //     color: Colors.lightBlueAccent.withOpacity(0.4),
          //     borderRadius: BorderRadius.circular(20.0),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceAround,
          //     children: [
          //       Text(
          //         "Feb 2023",
          //         style: TextStyle(
          //           fontSize: textTheme.titleMedium!.fontSize,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       Text(
          //         "·",
          //         style: textTheme.titleLarge,
          //       ),
          //       Text(
          //         "15L",
          //         style: TextStyle(
          //           fontSize: textTheme.titleMedium!.fontSize,
          //           fontWeight: FontWeight.bold,
          //         ),
          //       ),
          //       Text(
          //         "·",
          //         style: textTheme.titleLarge,
          //       ),
          //       Text(
          //         "Rs1200",
          //         style: TextStyle(
          //           fontSize: textTheme.titleMedium!.fontSize,
          //           fontWeight: FontWeight.w500,
          //           color: Colors.red,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class _CalendarHeader extends StatelessWidget {
  final DateTime focusedDay;
  final VoidCallback onLeftArrowTap;
  final VoidCallback onRightArrowTap;
  final VoidCallback onTodayButtonTap;
  final VoidCallback onClearButtonTap;
  final bool clearButtonVisible;

  const _CalendarHeader({
    Key? key,
    required this.focusedDay,
    required this.onLeftArrowTap,
    required this.onRightArrowTap,
    required this.onTodayButtonTap,
    required this.onClearButtonTap,
    required this.clearButtonVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerText = DateFormat.yMMM().format(focusedDay);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const SizedBox(width: 16.0),
          SizedBox(
            width: 120.0,
            child: Text(
              headerText,
              style: TextStyle(fontSize: 26.0),
            ),
          ),
          IconButton(
            icon: Icon(Icons.calendar_today, size: 20.0),
            visualDensity: VisualDensity.compact,
            onPressed: onTodayButtonTap,
          ),
          if (clearButtonVisible)
            IconButton(
              icon: Icon(Icons.clear, size: 20.0),
              visualDensity: VisualDensity.compact,
              onPressed: onClearButtonTap,
            ),
          const Spacer(),
          IconButton(
            icon: Icon(Icons.chevron_left),
            onPressed: onLeftArrowTap,
          ),
          IconButton(
            icon: Icon(Icons.chevron_right),
            onPressed: onRightArrowTap,
          ),
        ],
      ),
    );
  }
}
