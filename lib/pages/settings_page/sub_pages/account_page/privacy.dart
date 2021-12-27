import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF177767),
          title: Text('Privacy'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Privacy_Contents(),
      ),
    );
  }
}

class Privacy_Contents extends StatefulWidget {
  @override
  State<Privacy_Contents> createState() => _Privacy_ContentsState();
}

class _Privacy_ContentsState extends State<Privacy_Contents> {
  bool switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('Who can see my personal info'),
            subtitle: Text(
                "If you don't share your Last Seen, you won't be able to see other porple's Last Seen"),
          ),
          ListTile(
            title: Text('Last seen'),
            subtitle: Text('Nobody'),
          ),
          ListTile(
            title: Text('Profile photo'),
            subtitle: Text('Everyone'),
          ),
          ListTile(
            title: Text('About'),
            subtitle: Text('Everyone'),
          ),
          ListTile(
            title: Text('Status'),
            subtitle: Text('My contacts'),
          ),
          ListTile(
            title: Text('Read receipts'),
            isThreeLine: true,
            subtitle: Text(
                "If turned off, you won't send or receive Read receipts. Read receipts are always sent for group chats."),
            trailing: Switch(
              value: this.switchvalue,
              onChanged: (bool value) {
                setState(() => this.switchvalue = value);
              },
            ),
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            title: Text('Groups'),
            subtitle: Text('Everyone'),
          ),
          ListTile(
            title: Text('Live location'),
            subtitle: Text('None'),
          ),
          ListTile(
            title: Text('Blocked contacts'),
            subtitle: Text('0'),
          ),
          ListTile(
            title: Text('Fingerprint lock'),
            subtitle: Text('Disabled'),
          ),
        ],
      ),
    );
  }
}
