import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({super.key});

  @override
  State<NewGroupScreen> createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  List<String> selectedContacts = [];

  void contactSelection(String contact) {
    setState(() {
      if (selectedContacts.contains(contact)) {
        selectedContacts.remove(contact);
      } else {
        selectedContacts.add(contact);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const ListTile(
          // onTap: () => onTap(isSelected!, index),

          title: Text(
            'New Group',
            style: TextStyle(
                fontSize: 21, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            'Add participants',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                nameList[index]['avatar'],
              ),
            ),
            title: Text(
              nameList[index]['name'],
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            subtitle: Text(newgroupSubtitle[index]),
          );
        },
      ),
    );
  }
}
