import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:whatsapp_clone/pages/settings.dart';
import 'package:whatsapp_clone/main_body/chat_body.dart';
import 'package:whatsapp_clone/main_body/calls_body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _myTabPages = <Widget>[
    Center(
        child: Container(
      color: Colors.black,
    )),
    ChatBody(),
    const Center(
      child: Icon(
        Icons.access_alarm,
        size: 50,
        color: Colors.green,
      ),
    ),
    Calls(), 
  ];
  final _myTabs = <Tab>[
    const Tab(
      icon: Icon(
        Icons.camera_alt,
        size: 20,
      ),
    ),
    const Tab(
      child: Text(
        'CHATS',
      ),
    ),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS'),
  ];

  var navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _myTabs.length,
      child: MaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF177767),
            title: const Text(
              'WhatsApp',
              style: TextStyle(fontSize: 17),
            ),
            actions: [
              IconButton(
                onPressed: () => dummyButton('Search'),
                icon: const Icon(Icons.search),
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: const Text('New group'),
                    value: 2,
                    onTap: () => dummyButton('New Group'),
                  ),
                  PopupMenuItem(
                    child: Text('New broadcast'),
                    value: 2,
                    // onTap: () => dummyButton('New Broadcast'),
                  ),
                  PopupMenuItem(
                    child: Text('Linked devices'),
                    value: 2,
                    // onTap: () => dummyButton('Linked Devices'),
                  ),
                  PopupMenuItem(
                    child: Text('Starred messages'),
                    value: 2,
                    // onTap: () => dummyButton('Starred Messages'),
                  ),
                  PopupMenuItem(
                    child: Text('Payments'),
                    value: 2,
                    // onTap: () => dummyButton('Payments'),
                  ),
                  PopupMenuItem(
                    child: Text('Settings'),
                    value: 1,
                  ),
                ],
                onSelected: (int menu) {
                  if (menu == 1) {
                    navigatorKey.currentState?.push(MaterialPageRoute(
                        builder: (context) => SettingsPage()));
                  }
                },
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: _myTabs,
            ),
          ),
          body: TabBarView(
            children: _myTabPages,
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => dummyButton('FAB'),
            backgroundColor: Colors.green,
            child: const Icon(Icons.message),
          ),
        ),
      ),
    );
  }
}

void dummyButton(String string) => Fluttertoast.showToast(
      webPosition: "center",
      msg: "Dummy '$string' Button",
    );
