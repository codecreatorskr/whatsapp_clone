import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/select_contact_screen.dart';
import 'package:whatsapp_clone/screens/chatting_textfield_screen.dart';
import 'package:whatsapp_clone/utils/database.dart';

class ChatTabBarScreen extends StatefulWidget {
  const ChatTabBarScreen({
    super.key,
  });

  @override
  State<ChatTabBarScreen> createState() => _ChatTabBarScreenState();
}

class _ChatTabBarScreenState extends State<ChatTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatListContact(),
            ),
          );
        },
        backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
        child: const Icon(
          Icons.chat,
          color: Colors.white,
        ),
      ),

      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              // Navigator.pushNamed(context, '/contact')
              // Navigator.pushNamed(context, Routes.group);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChattingPage(
                    index: index,
                  ),
                ),
              ).then((value) {
                setState(() {});
              });
            },
            leading: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => FittedBox(
                    // fit: BoxFit.fill,
                    child: Dialog(
                      shape: const ContinuousRectangleBorder(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            chatList[index]['avatar'],
                            height: MediaQuery.of(context).size.width - 50,
                            width: MediaQuery.of(context).size.width - 50,
                            fit: BoxFit.cover,
                          ),
                          const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 30),
                                child: Icon(
                                  Icons.chat,
                                  color: Colors.teal,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 30),
                                child: Icon(
                                  Icons.call,
                                  color: Colors.teal,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 30),
                                child: Icon(
                                  Icons.videocam_sharp,
                                  color: Colors.teal,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 30),
                                child: Icon(
                                  Icons.info_outline,
                                  color: Colors.teal,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  chatList[index]['avatar'].toString(),
                ),
              ),
            ),
            title: Text(
              chatList[index]['name'],
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
            ),
            subtitle: Text(
              userMessageList[index],
              maxLines: 1,
            ),
            trailing: const Text("Yesterday"),
          );
        },
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   fixedColor: Colors.white,
      //   unselectedItemColor: Colors.grey,
      //   onTap: (home) => log("Home"),
      //   backgroundColor: const Color.fromARGB(221, 0, 0, 0),
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "home",
      //     ),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
      //   ],
      // ),
    );
  }
}
