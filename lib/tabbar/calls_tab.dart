import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/call_info_screen.dart';
import 'package:whatsapp_clone/screens/contact_screen.dart';
import 'package:whatsapp_clone/screens/create_call_link.dart';
import 'package:whatsapp_clone/utils/database.dart';

class CallsTabBar extends StatelessWidget {
  const CallsTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContactSelectScreen(),
            ),
          );
        },
        backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
        child: const Icon(
          Icons.add_ic_call,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateCallLinkScreen(),
                  ),
                );
              },
              iconColor: Colors.white,
              leading: const CircleAvatar(
                  backgroundColor: Colors.teal,
                  // backgroundImage: AssetImage('assets/images/tony.jpg'),
                  child: Icon(
                    Icons.link_outlined,
                    color: Colors.white,
                  )),
              title: const Text(
                "Create call link",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              subtitle: const Text("Share a link for your WhatsApp call"),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Recent',
                      style: TextStyle(fontSize: 17),
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: chatList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CallInfoScreen(index: index),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      chatList[index]['avatar'],
                    ),
                  ),
                  title: Text(
                    chatList[index]['name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  subtitle: Text(
                    subtitle[index],
                  ),
                  trailing: Icon(
                    callIcon[index]['icons'],
                    color: const Color.fromARGB(255, 44, 183, 169),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}









// SizedBox(
//           width: double.infinity,
//           height: 200,
//           child: ListView.builder(
//             itemCount: 2,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 iconColor: Colors.white,
//                 leading: CircleAvatar(
//                   backgroundImage: AssetImage(
//                     chatList[index]['avatar'],
//                   ),
//                 ),
//                 title: Text(
//                   chatList[index]['name'].toString(),
//                   style: const TextStyle(fontSize: 16),
//                 ),
//                 subtitle: Text(
//                   chatListSubtitle[index]['time'],
//                 ),
//               );
//             },
//           ),
//         ),




