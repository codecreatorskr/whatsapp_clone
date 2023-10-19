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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(
                chatList[index]['avatar'],
              ),
            ),
            title: Text(
              chatList[index]['name'],
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              newgroupSubtitle[index],
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                    color: Colors.teal,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.videocam),
                    color: Colors.teal,
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70),
            child: Text(
              '12 September',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.arrow_downward_sharp,
              color: Colors.teal,
            ),
            title: Text('Incoming'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.videocam,
                  color: Color.fromARGB(255, 157, 156, 156),
                  size: 21,
                ),
                Text('  15:18'),
              ],
            ),
            trailing: Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '10:05',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '90.51 MB',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.arrow_outward_rounded,
              color: Colors.teal,
            ),
            title: Text('Outgoing'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.videocam,
                  color: Color.fromARGB(255, 157, 156, 156),
                  size: 21,
                ),
                Text('  30:55'),
              ],
            ),
            trailing: Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '05:15',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '215.5 MB',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.arrow_downward_sharp,
              color: Colors.red,
            ),
            title: Text('Missed'),
            subtitle: Row(
              children: [
                Icon(
                  Icons.call,
                  size: 21,
                  color: Color.fromARGB(255, 157, 156, 156),
                ),
                Text('  04:55'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
