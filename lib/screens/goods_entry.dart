import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import 'provision_entry_screen.dart';

class GoodsEntry extends StatelessWidget {
  const GoodsEntry({Key? key}) : super(key: key);

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
                      Icon(Icons.add),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text("Goods Entry"),
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
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Make entries for the selected item below:"),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Milk"),
                ),
              ),
              TextButton(
                  onPressed: () {
                    //
                  },
                  child: Text("Complex Calendar")),
              SizedBox(
                height: 20.0,
              ),
              TableCalendar(
                firstDay: DateTime.utc(2022, 01, 01),
                lastDay: DateTime.utc(2024, 12, 31),
                focusedDay: DateTime.now(),
                onDaySelected: (date, events) {
                  print(date.toIso8601String());
                },
                calendarBuilders: CalendarBuilders(
                  dowBuilder: (context, day) {
                    if (day.weekday == DateTime.sunday) {
                      final text = DateFormat.E().format(day);

                      return Center(
                        child: Text(
                          text,
                          style: TextStyle(color: Colors.red),
                        ),
                      );
                    }
                  },
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     Icon(Icons.chevron_left),
              //     Text("Feb 2023"),
              //     Icon(Icons.chevron_right),
              //   ],
              // ),
              // SizedBox(
              //   height: 20.0,
              // ),
              // Row(
              //   // crossAxisAlignment: CrossAxisAlignment.stretch,
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("SUN"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("MON"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("TUE"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("WED"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("THU"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("FRI"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("SAT"),
              //     ),
              //   ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text(" "),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text(" "),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("1"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("2"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("3"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("4"),
              //     ),
              //     Container(
              //       color: Colors.grey.withOpacity(0.3),
              //       child: Text("5"),
              //     ),
              //   ],
              // ),
            ],
          ),
        ));
  }
}
