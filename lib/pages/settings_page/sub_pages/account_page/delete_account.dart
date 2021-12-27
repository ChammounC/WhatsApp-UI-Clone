import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/settings_page/sub_pages/account_page/change_number.dart';

class DeleteAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF177767),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text('Delete my account'),
        ),
        body: DeleteAccount_Contents(),
      ),
    );
  }
}

class DeleteAccount_Contents extends StatefulWidget {
  @override
  State<DeleteAccount_Contents> createState() => _DeleteAccount_ContentsState();
}

class _DeleteAccount_ContentsState extends State<DeleteAccount_Contents> {
  static const menuItems = <String>[
    'India',
    'Pakistan',
    'United Kingdom',
  ];
  final List<DropdownMenuItem<String>> _dropDownMenuItems = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();
  final List<PopupMenuItem<String>> _popUpMenuItems = menuItems
      .map(
        (String value) => PopupMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  String _btnSelectedVal = 'India';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Delete account info section
        Row(
          children: [
            // Warning Icon
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 20),
                height: MediaQuery.of(context).size.height / 3.5,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Icon(
                    Icons.warning,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ),
            // Info Column Section
            Expanded(
              flex: 11,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 20, 10, 0),
                alignment: Alignment.topLeft,
                height: MediaQuery.of(context).size.height / 3.5,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        ' Deleting your account will:',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '\u2022 Delete your account from WhatsApp',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '\u2022 Erase your message history',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '\u2022 Delete you from all of your WhatsApp groups',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '\u2022 Delete your Google Drive backup',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '\u2022 Delete Delete your payments history and cancel any pending payments',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ),
                    Spacer(),
                    Spacer(),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // Change Number Section Containing 2 Rows
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Phone Icon
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height / 7,
                child: Icon(Icons.phonelink_ring),
              ),
            ),
            // Text and Elevated Button Section which routes to the 'change_number.dart' file
            Expanded(
              flex: 11,
              child: Container(
                height: MediaQuery.of(context).size.height / 7,
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Change number instead?',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                            height: MediaQuery.of(context).size.height / 18),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.greenAccent[700],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangeNumber()));
                          },
                          child: Text(
                            'CHANGE NUMBER',
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),

        // Deleting Number Confirmation Section with 2 Rows
        Row(
          children: [
            // Blank Container for the left section
            Expanded(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.9,
              ),
            ),

            // Main Confirmation Section

            Expanded(
              flex: 11,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                height: MediaQuery.of(context).size.height / 2.9,
                child: Column(
                  children: [
                    //Info Container

                    Container(
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'To delete your account, confirm your country code and enter your phone number.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Country',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ),
                    //Drop Down Button to confirm Country code
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      height: 40,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: DropdownButton(
                          value: _btnSelectedVal,
                          onChanged: (String? newValue) {
                            if (newValue != null) {
                              setState(() => _btnSelectedVal = newValue);
                            }
                          },
                          items: this._dropDownMenuItems,
                          isExpanded: true,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Phone',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                prefixText: '91',
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 30,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                hintText: 'phone number',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.topLeft,
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                            height: MediaQuery.of(context).size.height / 18),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrangeAccent[700],
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangeNumber()));
                          },
                          child: Text(
                            'DELETE MY NUMBER',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
