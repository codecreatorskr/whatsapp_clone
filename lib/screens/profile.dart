import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';
import 'package:whatsapp_clone/utils/routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Routes.profile);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 50),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              height: 200,
              width: 300,
              clipBehavior: Clip.hardEdge,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Image.asset(chatList[index]['avatar'],);
                },
              ),
            ),
          ),
          const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(bottom: 45),
              child: Icon(
                Icons.person,
                color: Color.fromARGB(255, 153, 152, 152),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Text('Saurabh Kumar'),
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                  'This is not your username or pin. this name will be visible to your WhatsApp contacts.'),
            ),
            trailing: Icon(
              Icons.edit,
              color: Color.fromARGB(255, 3, 197, 177),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.info_outline,
              color: Color.fromARGB(255, 153, 152, 152),
            ),
            title: Text('About'),
            subtitle: Text('Available'),
            trailing: Icon(
              Icons.edit,
              color: Color.fromARGB(255, 3, 197, 177),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.phone,
              color: Color.fromARGB(255, 153, 152, 152),
            ),
            title: Text('Phone'),
            subtitle: Text('+91 91001862655'),
          )
        ],
      ),
    );
  }
}
