import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';

import '../Theming/theming.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Themingcolors.maincolor,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
      ),
      padding: EdgeInsets.only(top: 8,left: 8,bottom: 30,right: 8),
      child: CalendarTimeline(
        initialDate: DateTime(2020, 4, 20),
        firstDate: DateTime(2019, 1, 15),
        lastDate: DateTime(2020, 11, 20),
        onDateSelected: (date) => print(date),
        leftMargin: 20,
        monthColor: Colors.black,
        dayColor: Themingcolors.whiteFontColor,
        activeDayColor: Themingcolors.maincolor,
        activeBackgroundDayColor: Themingcolors.whiteContainerColor,
        // selectableDayPredicate: (date) => date.day != 23,
        locale: 'en',
      ),
    );
  }
}
