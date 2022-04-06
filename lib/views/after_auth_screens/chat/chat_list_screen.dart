import 'package:flutter/material.dart';
import 'package:talawa/views/after_auth_screens/chat/direct_chats.dart';
import 'package:talawa/views/after_auth_screens/chat/event_chats.dart';
import 'package:talawa/views/after_auth_screens/chat/select_contact.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Chats",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Direct",
              ),
              Tab(
                text: "Events",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DirectChats(),
            EventChats(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
<<<<<<< HEAD
                MaterialPageRoute(builder: (context) => SelectContact()));
=======
                MaterialPageRoute(builder: (context) => const SelectContact()));
>>>>>>> be9e55f423cff22fe3ce196c45a457395b2a914e
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
