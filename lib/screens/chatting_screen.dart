import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

final textController = TextEditingController(text: 'Hii');

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_back),
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage(
                chatList[0]['avatar'],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Saurabh',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'last seen today at 06:00',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.5,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.mic,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: SizedBox(),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     CircleAvatar(
          //       backgroundColor: Colors.teal,
          //       child: IconButton(
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.mic,
          //           color: Colors.white,
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 80,
                left: 5,
                bottom: 18,
              ),
              child: TextField(
                onChanged: (value) {
                  log(value, name: 'onChanged');
                },
                onEditingComplete: () {
                  log(textController.text, name: 'onEditingComplete');
                },
                onSubmitted: (value) {
                  log(value, name: 'onSumbitted');
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.emoji_emotions_outlined,
                  ),
                  hintText: 'Message',
                  hintStyle: const TextStyle(fontSize: 20),
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.attach_file_outlined),
                      ),
                      IconButton(
                        // color: Colors.grey,
                        onPressed: () {},
                        icon: const Icon(Icons.currency_rupee),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt_rounded),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
