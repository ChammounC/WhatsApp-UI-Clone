import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/settings_page/sub_pages/account_page/delete_account.dart';
import 'package:whatsapp_clone/pages/settings_page/sub_pages/account_page/privacy.dart';
import 'package:whatsapp_clone/pages/settings_page/sub_pages/account_page/request_account_info.dart';
import 'package:whatsapp_clone/pages/settings_page/sub_pages/account_page/security.dart';
import 'package:whatsapp_clone/pages/settings_page/sub_pages/account_page/two_step_verification.dart';
import 'package:whatsapp_clone/pages/settings_page/sub_pages/account_page/change_number.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Account'),
          backgroundColor: Color(0xFF177767),
        ),
        body: AccountPageBody(),
      ),
    );
  }
}

class AccountPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
            leading: Icon(Icons.lock),
            title: Text('Privacy'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacyPage(),
                ),
              );
            }),
        ListTile(
          leading: Icon(Icons.security),
          title: Text('Security'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecurityPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.verified_user),
          title: Text('Two-step verification'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TwoStepVerificationPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.phone_android),
          title: Text('Change number'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ChangeNumber()));
          },
        ),
        ListTile(
          leading: Icon(Icons.request_page),
          title: Text('Request account info'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RequestInfo()));
          },
        ),
        ListTile(
          leading: Icon(Icons.delete),
          title: Text('Delete my account'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DeleteAccount()));
          },
        ),
      ],
    );
  }
}
