// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';

class inboxPage extends StatefulWidget {
  @override
  State<inboxPage> createState() => _inboxPageState();
}

class _inboxPageState extends State<inboxPage> {
  var size, height, width;

  var selectedfolder = 'Inbox';

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 239, 239),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: height / 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: width / 18),
                // ignore: prefer_const_constructors
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/a/AEdFTp7HB1ZjlorTV0wExaxhYEFjVlpn5ODkxRXx6aSHnw=s288-p-rw-no'),
                  radius: 32,
                ),
                SizedBox(
                  width: width / 2,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 35,
                    )),
                Badge(
                    position: BadgePosition.topEnd(top: 10, end: 5),
                    badgeContent: Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 4,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_month,
                          color: Colors.black,
                          size: 35,
                        ))),
              ],
            ),
            SizedBox(
              height: height / 16,
            ),
            Container(
              padding: EdgeInsets.only(left: width / 12),
              child: DropdownButton(
                icon: Icon(Icons.keyboard_double_arrow_down_sharp,
                    color: Colors.black),
                items: const ["All Inboxes", "Drafts", "Trash", "Sent"]
                    .map((e) => DropdownMenuItem(
                          child: Text("$e"),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    selectedfolder = val.toString();
                  });
                },
                onTap: null,
                hint: Text(
                  'All Inboxes',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      backgroundColor: Colors.white.withOpacity(0.0)),
                ),
              ),
            ),
            SizedBox(
              height: height / 26,
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Bassel',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Hazem',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Abdo',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Azzam',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Biso',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: null,
                ),
                title: Text(
                  'Hazem',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'Email Subject'
                  "\n"
                  'This is part of the email body click to view full email',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send_rounded),
          onPressed: null,
          backgroundColor: Colors.black),
    );
  }
}
