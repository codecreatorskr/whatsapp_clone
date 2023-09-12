import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chatting_textfield_screen.dart';
import 'package:whatsapp_clone/utils/database.dart';

class ModelsUses extends StatelessWidget {
  const ModelsUses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Models'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChattingPage(index: index),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage(users[index].avatar.last['avatar']),
            ),
            // title: Text(users[index].name[index]['name']),
            subtitle: Text(users[index].message.last.textAndTime[index]['message']),
            trailing: Text('${users[index].message.last.textAndTime[index]} min'),
          );
        },
      ),
    );
  }
}
