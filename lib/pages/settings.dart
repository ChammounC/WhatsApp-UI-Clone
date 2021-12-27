import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/settings_page/account.dart';
import 'package:whatsapp_clone/pages/settings_page/profile.dart';
import 'package:whatsapp_clone/pages/settings_page/chats.dart';
import 'package:whatsapp_clone/pages/settings_page/notifications.dart';
import 'package:whatsapp_clone/pages/settings_page/storage_and_data.dart';
import 'package:whatsapp_clone/pages/settings_page/help.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF177767),
          title: Text('Settings'),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
              )),
        ),
        body: SettingsBody(),
      ),
    );
  }
}

class SettingsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listTiles = [
      ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: ClipOval(
            child: Hero(
              tag: 'profile',
              child: Image.asset('assets/rick.jpg'),
            ),
          ),
        ),
        title: Text('Rick'),
        subtitle: Text('Available'),
        contentPadding: EdgeInsets.fromLTRB(10, 5, 20, 5),
        trailing: Icon(Icons.qr_code, color: Color(0xFF177767)),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ProfilePage()));
        },
      ),
      Divider(
        thickness: 1,
      ),
      ListTile(
          leading: Icon(
            Icons.privacy_tip,
            color: Color(0xFF177767),
          ),
          title: Text('Account'),
          subtitle: Text('Privacy, security, change number'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AccountPage()));
          }),
      ListTile(
        leading: Icon(
          Icons.message,
          color: Color(0xFF177767),
        ),
        title: Text('Chats'),
        subtitle: Text('Themes, wallpapers, chat history'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatsPage()));
        },
      ),
      ListTile(
        leading: Icon(
          Icons.notification_add,
          color: Color(0xFF177767),
        ),
        title: Text('Notifications'),
        subtitle: Text('Message, group & call tones'),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => NotificationPage()));
        },
      ),
      ListTile(
        leading: Icon(
          Icons.storage,
          color: Color(0xFF177767),
        ),
        title: Text('Storage and data'),
        subtitle: Text('Network usage, auto-download'),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => StorageDataPage()));
        },
      ),
      ListTile(
        leading: Icon(
          Icons.help,
          color: Color(0xFF177767),
        ),
        title: Text('Help'),
        subtitle: Text('Help centre, contact us, privacy policy'),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HelpPage()));
        },
      ),
      Divider(
        thickness: 1,
      ),
      ListTile(
          leading: Icon(
            Icons.people,
            color: Color(0xFF177767),
          ),
          title: Text('Invite a friend')),
      ListTile(
        title: Container(
          height: 20,
          alignment: Alignment.center,
          child: Text(
            'from',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ),
        subtitle: Container(
          alignment: Alignment.center,
          child: Text(
            'F A C E B O O K',
            style: TextStyle(color: Colors.black, fontFamily: 'Klavika'),
          ),
        ),
      ),
    ];
    return ListView(
      children: listTiles,
    );
  }
}
