import 'dart:math';

import 'package:flutter/material.dart';
import 'package:username_gen/username_gen.dart';

class Calls extends StatefulWidget {
  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            horizontalTitleGap: 30,
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            title: Text(
              UsernameGen.generateWith(
                data: UsernameGenData(
                  names: [
                    'James Carter',
                    'Stephanie Thompson',
                    'Anthony Herrera',
                    'Elaine Pierce',
                    'Alfred Mccormick',
                    'Sarah Smith',
                    'Rachel Ramirez',
                    'Martin Howell',
                    'Amanda Swanson',
                    'David Mendoza',
                    'Alexander Shepherd',
                    'Michael Miller',
                    'Douglas Black',
                    'Marcia Holden',
                    'Wayne Hendricks',
                    'Kelli Moore',
                    'Renee Oliver',
                    'Tina Johnson MD',
                    'Gary Ellison',
                    'Kristina Parks'
                  ],
                  adjectives: [
                    '',
                    // 'adorable',
                    // 'adventurous',
                    // 'aggressive',
                    // 'agreeable',
                    // 'alert',
                    // 'alive',
                    // 'amused',
                    // 'angry',
                    // 'annoyed',
                    // 'annoying',
                    // 'anxious',
                    // 'arrogant',
                  ],
                ),
                seperator: ' ',
              ),
            ),
            subtitle: Rand(),
            trailing: Icon(Icons.call),
          );
        });
  }
}

Widget Rand() {
  int date = Random().nextInt(31);
  int hour = Random().nextInt(24);
  int min = Random().nextInt(61);
  Text a = Text(
    UsernameGen.generateWith(
      data: UsernameGenData(names: [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December'
      ], adjectives: [
        ''
      ]),
      seperator: ' ',
    ),
  );
  return Text('$date $a,$hour:$min');
}
