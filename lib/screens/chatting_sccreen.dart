import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/url_list.dart';

final textController = TextEditingController(text: 'Hii');

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                chatList[0]['avatar'],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Saurabh',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
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
            // child: Align(
            //     alignment: Alignment.bottomRight,
            //     child: SizedBox(child: Icon(Icons.mic))),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 80,
                left: 5,
                bottom: 13,
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
