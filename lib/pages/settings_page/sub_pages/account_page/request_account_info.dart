import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class RequestInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Request account info'),
          backgroundColor: Color(0xFF177767),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: RequestInfo_Contents(),
      ),
    );
  }
}

class RequestInfo_Contents extends StatefulWidget {
  @override
  State<RequestInfo_Contents> createState() => _RequestInfo_ContentsState();
}

class _RequestInfo_ContentsState extends State<RequestInfo_Contents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/request_info.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
          child: RichText(
            text: TextSpan(
              text:
                  "Create a report of your WhatsApp account information and settings, which you can access or port to another app. This report does not include your messages.",
              style: TextStyle(fontSize: 17),
              children: [
                TextSpan(
                  text: "Learn more",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      var url =
                          "https://faq.whatsapp.com/general/account-and-profile/how-to-request-your-account-information?lg=en&lc=GB&eea=0";
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
        ),
        Divider(
          thickness: 1,
        ),
        ListTile(
          leading: Icon(Icons.request_page),
          title: Text('Request report'),
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
