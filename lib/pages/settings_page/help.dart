import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_clone/pages/settings_page/sub_pages/help_page/app_info.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFF177767),
            title: Text('Help'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: HelpPage_Contents(),
      ),
    );
  }
}

class HelpPage_Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.help),
          title: Text('Help Centre'),
          onTap: () => launch(
              "https://faq.whatsapp.com/android?lg=en&lc=GB&eea=0&anid=4e5b28b6-bd80-4198-a9f0-840e32269e31"),
        ),
        ListTile(
          leading: Icon(Icons.people),
          title: Text('Contact Us'),
          subtitle: Text('Questions? Need help?'),
        ),
        ListTile(
          leading: Icon(Icons.request_page),
          title: Text('Terms and Privacy Policy'),
          onTap: () =>
              launch("https://www.whatsapp.com/legal/?lg=en&lc=GB&eea=0"),
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('App info'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AppInfo()));
          },
        ),
      ],
    );
  }
}
