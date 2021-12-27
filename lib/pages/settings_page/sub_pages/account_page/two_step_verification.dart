import 'package:flutter/material.dart';

class TwoStepVerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Two-step verification'),
          backgroundColor: Color(0xFF177767),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: TwoStepVerification_Contents(),
      ),
    );
  }
}

class TwoStepVerification_Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 5,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/verified.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text(
            'For added security, enable two-step verification, which will require a PIN when registering your phone number with WhatsApp again.',
            style: TextStyle(fontSize: 15, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(15),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF177767),
              elevation: 5.0,
            ),
            onPressed: () {},
            child: Text('ENABLE'),
          ),
        ),
      ],
    );
  }
}
