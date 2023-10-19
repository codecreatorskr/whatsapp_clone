import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

class ProfileImageScreen extends StatelessWidget {
  const ProfileImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '+91 91001862655',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Image.asset(chatList[index]['avatar']),
          );
        },
      ),
    );
  }
}
