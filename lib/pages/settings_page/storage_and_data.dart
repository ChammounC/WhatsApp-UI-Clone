import 'package:flutter/material.dart';

class StorageDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF177767),
            title: Text('Storage and data'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: StorageDataPage_Contents(),
      ),
    );
  }
}

class StorageDataPage_Contents extends StatefulWidget {
  @override
  State<StorageDataPage_Contents> createState() =>
      _StorageDataPage_ContentsState();
}

class _StorageDataPage_ContentsState extends State<StorageDataPage_Contents> {
  bool switchvalue = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.folder),
          title: Text('Manage storage'),
          subtitle: Text('16.0 GB'),
        ),
        ListTile(
          leading: Icon(Icons.data_usage),
          title: Text('Network usage'),
          subtitle: Text('0.0 MB sent \u2022 0.0 MB received'),
        ),
        ListTile(
          title: Text('Use less data for calls'),
          trailing: Switch(
            value: this.switchvalue,
            onChanged: (bool value) {
              setState(() => this.switchvalue = value);
            },
          ),
        ),
        Divider(
          thickness: 0.5,
        ),
        ListTile(
          title: Text('Conversation tones'),
          subtitle: Text('Play sounds for incoming and outgoing messages.'),
        ),
        ListTile(
          title: Text('Media auto-download',
              style: TextStyle(fontSize: 14, color: Color(0xFF177767))),
          subtitle: Text('Voice messages are always automatically downloaded'),
        ),
        ListTile(
          title: Text('When using mobile data'),
          subtitle: Text('All media'),
        ),
        ListTile(
          title: Text('When connected on Wi-Fi'),
          subtitle: Text('All media'),
        ),
        ListTile(
          title: Text('When roaming'),
          subtitle: Text('All media'),
        ),
      ],
    );
  }
}
