import 'dart:io';

import 'package:flutter/material.dart';

class CreateCallLinkScreen extends StatelessWidget {
  const CreateCallLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create call link',
          style: TextStyle(
            fontSize: 23,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Text(
              'Anyone with WhatsApp can use this link to join this call. Only share it with people you trust.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Icon(
                Icons.videocam,
                color: Colors.white,
              ),
            ),
            title: Text(
              'https://call.whatsapp.com/video/fewjk3425nsacds',
              style: TextStyle(
                // fontSize: 20,
                color: Color.fromARGB(255, 0, 174, 197),
                // fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: ListTile(
              title: Text(
                'Call type',
                style: TextStyle(
                  fontSize: 19,
                  // color: Color.fromARGB(255, 0, 174, 197),
                  // fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                'Video',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 132, 132, 132),
                  // fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.send),
            title: Text(
              'Send link via WhatsApp',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.copy),
            title: Text(
              'Copy link',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              'Send link',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          )
        ],
      ),
    );
  }
}
