import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/new_community_screen.dart';
import 'package:whatsapp_clone/screens/new_group_screen.dart';
import 'package:whatsapp_clone/utils/database.dart';

class ChatListContact extends StatelessWidget {
  const ChatListContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const ListTile(
          textColor: Colors.white,
          title: Text(
            'Select contact',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          subtitle: Text(
            '100 contacts',
            style: TextStyle(fontSize: 15),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                ListTile(
                  // tileColor: Colors.amber,
                  //  Icons icon=contactListIcon();
                  leading: const CircleAvatar(
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.group,
                      color: Colors.white,
                    ),
                  ),
                  title: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewGroupScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'New group',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.person_add_rounded,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'New contact',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  trailing: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.qr_code)),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: Colors.teal,
                    child: Icon(
                      Icons.groups,
                      color: Colors.white,
                    ),
                  ),
                  title: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewCommunityScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'New community',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Contacts on WhatsApp',
                style: TextStyle(
                  // fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 109, 106, 106),
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: chatList.length,
              itemBuilder: (context, index) {
                return ListTile(
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
                    chatListSubtitle[index]['message'],
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Invite to WhatsApp',
                style: TextStyle(
                    // fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 109, 106, 106)),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: invitedwhatsapplist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(
                    Icons.account_circle_rounded,
                    color: Color.fromARGB(255, 185, 185, 185),
                    size: 42,
                  ),
                  title: Text(
                    invitedwhatsapplist[index]['Name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  trailing: const Text(
                    'Invite',
                    style: TextStyle(color: Colors.teal, fontSize: 15),
                  ),
                );
              },
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.share_sharp,
                  color: Color.fromARGB(255, 97, 90, 90),
                ),
              ),
              title: Text(
                'Share invite link',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.help,
                  color: Color.fromARGB(255, 174, 174, 174),
                  size: 40,
                ),
              ),
              title: Text(
                'Contacts help',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
