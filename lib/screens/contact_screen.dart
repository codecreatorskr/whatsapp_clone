import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/new_community_screen.dart';
import 'package:whatsapp_clone/screens/new_group_screen.dart';
import 'package:whatsapp_clone/utils/database.dart';

class ContactSelectScreen extends StatelessWidget {
  const ContactSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          title: Text(
            'Select contact',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            '100 contacts',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.insert_link,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'New call links',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
              ),
            ),
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                child: Icon(
                  Icons.group,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'New group call',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 19),
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
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code)),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: nameList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(nameList[index]['avatar']),
                  ),
                  title: Text(
                    nameList[index]['name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  subtitle: Text(
                    newgroupSubtitle[index],
                  ),
                  trailing: Row(
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
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Icon(Icons.share),
                title: Text(
                  'Invite friends',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.help),
              title: Text(
                'Contact help',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
