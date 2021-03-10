import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender12 extends StatefulWidget {
  @override
  _Calender12State createState() => _Calender12State();
}

class _Calender12State extends State<Calender12> {
  CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Calendar"),
      ),
      body: Container(child: TableCalendar(calendarController: _controller)),
    ));
  }
}
