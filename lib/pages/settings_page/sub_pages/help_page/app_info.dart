import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_clone/pages/settings_page/help.dart';

class AppInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AppInfo_Contents(),
      ),
    );
  }
}

class AppInfo_Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('background.jpg'), fit: BoxFit.cover),
          ),
        ),
        ClipRRect(
          // Clip it cleanly.
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.white.withOpacity(0.2),
                    Colors.black.withOpacity(0.2),
                  ],
                  radius: 0.9,
                ),
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'WhatsApp Messenger',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'Version 2.21.13.28',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                  Container(
                    child: Image.asset(
                      'assets/whatsapp_logo.png',
                      height: MediaQuery.of(context).size.height / 5.5,
                      width: MediaQuery.of(context).size.width / 3.5,
                    ),
                  ),
                  Text(
                    '\u00a9 2020-2021 WhatsApp Inc',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text: "LICENSES",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
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
                          }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
