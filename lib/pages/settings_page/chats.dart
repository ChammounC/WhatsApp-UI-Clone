import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
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
          title: Text('Chats'),
        ),
        body: Chats_Contents(),
      ),
    );
  }
}

class Chats_Contents extends StatefulWidget {
  @override
  _Chats_ContentsState createState() => _Chats_ContentsState();
}

class _Chats_ContentsState extends State<Chats_Contents> {
  bool switchvalue = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            height: MediaQuery.of(context).size.height / 15,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Display',
                style: TextStyle(
                  color: Color(0xFF177767),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.brightness_6_rounded,
              color: Color(0xFF177767),
            ),
            title: Text('Theme'),
            subtitle: Text('Light'),
          ),
          ListTile(
            leading: Icon(
              Icons.wallpaper,
              color: Color(0xFF177767),
            ),
            title: Text('Theme'),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: MediaQuery.of(context).size.height / 15,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Chat settings',
                style: TextStyle(
                  color: Color(0xFF177767),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Spacer(),
            title: Text('Enter is send'),
            subtitle: Text('Enter key will send your message'),
            trailing: Switch(
              value: this.switchvalue,
              onChanged: (bool value) {
                setState(() => this.switchvalue = value);
              },
            ),
          ),
          ListTile(
            leading: Spacer(),
            title: Text('Media visibility'),
            subtitle:
                Text("Show newly downloaded media in your phone's gallery"),
            trailing: Switch(
              value: this.switchvalue,
              onChanged: (bool value) {
                setState(() => this.switchvalue = value);
              },
            ),
          ),
          ListTile(
            leading: Spacer(),
            title: Text('Font size'),
            subtitle: Text('Small'),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.5,
          ),
          ListTile(
            leading: Icon(
              Icons.language,
              color: Color(0xFF177767),
            ),
            title: Text('App Language'),
            subtitle: Text("Phone's language(English)"),
          ),
          ListTile(
            leading: Icon(
              Icons.backup,
              color: Color(0xFF177767),
            ),
            title: Text('Chat backup'),
          ),
          ListTile(
            leading: Icon(
              Icons.history,
              color: Color(0xFF177767),
            ),
            title: Text('Chat history'),
          ),
        ],
      ),
    );
  }
}
