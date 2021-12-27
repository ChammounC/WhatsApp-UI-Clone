import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF177767),
          title: Text('Profile'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Profile_Contents(),
      ),
    );
  }
}

class Profile_Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3.5,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.red[200],
                child: ClipOval(
                  child: Hero(
                    tag: 'profile',
                    child: Image.asset('assets/rick.jpg'),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 23,
                backgroundColor: Color(0xFF177767),
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text(
            'Name',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          subtitle: Text(
            'Rick',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          leading: Opacity(
            opacity: 0,
            child: Icon(Icons.ac_unit),
          ),
          subtitle: Text(
            'This is not your username or pin. This name will be visible to your WhatsApp contacts.',
            style: TextStyle(fontSize: 14),
          ),
        ),
        Divider(
          thickness: 1,
          indent: 67,
        ),
        ListTile(
          leading: Icon(Icons.info_outline),
          title: Text(
            'About',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          subtitle: Text(
            'Available',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
          trailing: Icon(Icons.edit),
        ),
        Divider(
          thickness: 1,
          indent: 67,
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text(
            'Phone',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          subtitle: Text(
            '+91 9876543210',
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
      ],
    );
  }
}
