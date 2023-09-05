import 'package:flutter/material.dart';

class EditStatusScreen extends StatelessWidget {
  const EditStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 76, 138, 5),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Icon(Icons.emoji_emotions_sharp),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Icon(Icons.text_fields),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.color_lens),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: TextField(
            // cursorOpacityAnimates: true,
            cursorColor: Colors.white,
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
            maxLines: 10,
            textAlign: TextAlign.center,
            // textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 159, 159, 159),
                fontSize: 40,
                fontWeight: FontWeight.normal,
              ),
              border: InputBorder.none,
              hintText: 'Type a status',
            ),
          ),
        ),
      ),
    );
  }
}
