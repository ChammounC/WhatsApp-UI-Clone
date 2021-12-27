import 'dart:math';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(),
            title: Text('Roni'),
            subtitle: Container(
              child: Row(
                children: [
                  Icon(Icons.check),
                  Text('abcd'),
                ],
              ),
            ),
            trailing: Text('Yesterday'),
            horizontalTitleGap: 30,
            tileColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
          );
        });
  }
}
