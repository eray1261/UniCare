import 'package:flutter/material.dart';
import 'package:flutter_healthcare_app/src/model/user_model.dart';
import 'package:flutter_healthcare_app/src/widgets/category_selector.dart';
import 'package:flutter_healthcare_app/src/widgets/favorite_contacts.dart';
import 'package:flutter_healthcare_app/src/widgets/recent_chats.dart';

class ChatPage extends StatefulWidget {
  static const routeName = '/chatPage';
  final User user;
  ChatPage({this.user});
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 239, 197, 179),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 197, 179),
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 239, 197, 179),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// /Users/harsh/Documents/Dev/Flutter Projects/eshapp/flutter_healthcare_app/lib/src/pages