import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF177767),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: NotificationPage_Contents(),
      ),
    );
  }
}

class NotificationPage_Contents extends StatefulWidget {
  @override
  _NotificationPage_ContentsState createState() =>
      _NotificationPage_ContentsState();
}

class _NotificationPage_ContentsState extends State<NotificationPage_Contents> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Conversation tones'),
          subtitle: Text('Play sounds for incoming and outgoing messages.'),
          trailing: Switch(
            value: this.switchvalue,
            onChanged: (bool value) {
              setState(() => this.switchvalue = value);
            },
          ),
        ),
        Divider(),
        Container(
          padding: EdgeInsets.only(left: 20),
          height: MediaQuery.of(context).size.height / 10,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Messages',
              style: TextStyle(
                color: Color(0xFF177767),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text('Notification tone'),
          subtitle: Text('Atomic Bell'),
        ),
        ListTile(
          title: Text('Vibrate'),
          subtitle: Text('Default'),
        ),
        ListTile(
          title: Text('Popup Notification'),
          subtitle: Text('Not Available'),
        ),
        ListTile(
          title: Text('Light'),
          subtitle: Text('White'),
        ),
        ListTile(
          title: Text('Use high priority notifications'),
          subtitle:
              Text('Show previews of notifications at the top of the screen'),
          trailing: Switch(
            value: this.switchvalue,
            onChanged: (bool value) {
              setState(() => this.switchvalue = value);
            },
          ),
        ),
        Divider(),
        Container(
          padding: EdgeInsets.only(left: 20),
          height: MediaQuery.of(context).size.height / 15,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Groups',
              style: TextStyle(
                color: Color(0xFF177767),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text('Notification tone'),
          subtitle: Text('Atomic Bell'),
        ),
        ListTile(
          title: Text('Vibrate'),
          subtitle: Text('Default'),
        ),
        ListTile(
          title: Text('Light'),
          subtitle: Text('White'),
        ),
        ListTile(
          title: Text('Use high priority notifications'),
          subtitle:
              Text('Show previews of notifications at the top of the screen'),
          trailing: Switch(
            value: this.switchvalue,
            onChanged: (bool value) {
              setState(() => this.switchvalue = value);
            },
          ),
        ),
        Divider(),
        Container(
          padding: EdgeInsets.only(left: 20),
          height: MediaQuery.of(context).size.height / 15,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Calls',
              style: TextStyle(
                color: Color(0xFF177767),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text('Ringtone'),
          subtitle: Text('Default(Rick Astley - Never Gonna Give You Up)'),
        ),
        ListTile(
          title: Text('Vibrate'),
          subtitle: Text('Default'),
        ),
      ],
    );
  }
}
