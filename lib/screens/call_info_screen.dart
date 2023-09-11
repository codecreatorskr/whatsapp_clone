import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/chatting_textfield_screen.dart';
import 'package:whatsapp_clone/utils/database.dart';

class CallInfoScreen extends StatelessWidget {
  final dynamic index;
  const CallInfoScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Call info',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChattingPage(index: index),
                ),
              );
            },
            icon: const Icon(Icons.chat),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                chatList[index]['avatar'],
              ),
            ),
            title: Text(
              chatList[index]['name'],
            ),
            subtitle: Text(
              newgroupSubtitle[index],
            ),
            // trailing: Padding(
            //   padding: const EdgeInsets.only(top: 15),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.call),
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: const Icon(Icons.videocam),
            //       ),
            //     ],
            //   ),
            // ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
