import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecurityPage extends StatelessWidget {
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
        body: SecurityPage_Content(),
      ),
    );
  }
}

class SecurityPage_Content extends StatefulWidget {
  @override
  State<SecurityPage_Content> createState() => _SecurityPage_ContentState();
}

class _SecurityPage_ContentState extends State<SecurityPage_Content> {
  var switchvalue = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/lock.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
          child: Text(
            'WhatsApp secures your conversations with end-to-end encryption. This means your messages, calls and status updates stay between you and the prople you choose. Not even WhatsApp can read or listen to them.',
            style: TextStyle(fontSize: 17),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: RichText(
              text: TextSpan(
                  text: "Learn more",
                  style: TextStyle(color: Colors.blue, fontSize: 17),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url =
                          "https://www.whatsapp.com/security?lg=en&lc=GB&eea=0";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not load $url';
                      }
                    }),
            ),
          ),
        ),
        Divider(
          thickness: 1,
        ),
        ListTile(
          title: Text('Show security notifications'),
          subtitle: RichText(
            text: TextSpan(
              text:
                  "Turn on this setting to receive notifications when one of your contact's security code changes.",
              style: TextStyle(color: Colors.grey),
              children: [
                TextSpan(
                  text: "Learn more",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url =
                          "https://www.whatsapp.com/security?lg=en&lc=GB&eea=0";
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not load $url';
                      }
                    },
                ),
              ],
            ),
          ),
          trailing: Switch(
            value: this.switchvalue,
            onChanged: (bool value) {
              setState(() => this.switchvalue = value);
            },
          ),
        ),
      ],
    );
  }
}
