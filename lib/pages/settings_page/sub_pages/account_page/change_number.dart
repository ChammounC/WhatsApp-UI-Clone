import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChangeNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Change Number'),
          backgroundColor: Color(0xFF177767),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: ChangeNumber_Contents(),
      ),
    );
  }
}

class ChangeNumber_Contents extends StatelessWidget {
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
            backgroundImage: AssetImage('assets/phone.png'),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text(
            'Changing your phone number will migrate your account info, groups & settings.',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text(
            'Before proceeding please confirm that you are able to receive SMS or calls at your new number.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Text(
            'If you have both a new phone & a new number, first change your number on your old phone.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
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
            onPressed: () {
              Fluttertoast.showToast(msg: 'Dummy Button');
            },
            child: Text('NEXT'),
          ),
        ),
      ],
    );
  }
}
