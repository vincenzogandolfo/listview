import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('ListView'),
          ),
        ),
        body: ListView.separated(
          itemCount: days.length,
          itemBuilder: (context, index) => Day(days[index]),
          separatorBuilder: (context, index) => Container(
            height: 2,
            width: double.infinity,
            color: Colors.black12,
          ),
        ),
      ),
    );
  }
}

/*
ListView.builder(
          itemCount: days.length,
          itemBuilder: (context, index) => Day(days[index]),
        ),
*/

class Day extends StatelessWidget {
  final DayModel model;

  const Day(this.model);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            model.number.toString(),
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      title: Text(model.day),
      subtitle: Text(model.month),
    );
  }
}

class DayModel {
  final int number;
  final String day;
  final String month;

  DayModel({required this.number, required this.day, required this.month});
}

final days = [
  DayModel(number: 1, day: 'Lunedì', month: 'Gennaio'),
  DayModel(number: 2, day: 'Martedì', month: 'Gennaio'),
  DayModel(number: 3, day: 'Mercoledì', month: 'Gennaio'),
  DayModel(number: 4, day: 'Giovedì', month: 'Gennaio'),
  DayModel(number: 5, day: 'Venerdì', month: 'Gennaio'),
  DayModel(number: 6, day: 'Sabato', month: 'Gennaio'),
  DayModel(number: 7, day: 'Domenica', month: 'Gennaio'),
];
