import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

class ChattingPage extends StatefulWidget {
  final int index;

  const ChattingPage({
    super.key,
    required this.index,
  });

  @override
  State<ChattingPage> createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  final textController = TextEditingController();
  bool send = false;
  bool icon = false;

  @override
  void initState() {
    super.initState();
    //send or mic button
    textController.addListener(() {
      if (textController.text.isNotEmpty) {
        send = true;
      } else {
        send = false;
      }
      setState(() {});
    });

    //textfield icons
    textController.addListener(() {
      if (textController.text.isNotEmpty) {
        icon = true;
      } else {
        icon = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var textField = TextField(
      textInputAction: TextInputAction.done,
      controller: textController,
      // onChanged: (value) {
      //   log(value, name: 'onChanged');
      // },
      // onEditingComplete: () {
      //   log(textController.text, name: 'onEditingComplete');
      // },
      onSubmitted: (value) {
        sendMessage();
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
            if (!icon)
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.currency_rupee),
              ),
            if (!icon)
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.camera_alt_rounded),
              ),
          ],
        ),
      ),
    );
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
                chatList[widget.index]['avatar'],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatList[widget.index]['name'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    'last seen today at 06:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7.6,
                      fontWeight: FontWeight.w500,
                    ),
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
      floatingActionButton: SizedBox(
        height: 50,
        width: 50,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            send
                ? Positioned(
                    left: 8,
                    top: 6,
                    child: FloatingActionButton(
                      heroTag: null,
                      onPressed: () {
                        sendMessage();
                      },
                      backgroundColor: Colors.teal,
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Positioned(
                    top: 6,
                    left: 8,
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.teal,
                      shape: const CircleBorder(),
                      child: const Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
                    ),
                  ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatList[widget.index]['messages'].length,
              itemBuilder: (BuildContext context, int index) {
                return Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color: const Color.fromARGB(255, 117, 241, 181),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 1),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ConstrainedBox(
                              constraints: const BoxConstraints(
                                maxWidth: 200,
                              ),
                              child: Text(
                                chatList[widget.index]['messages'][index]
                                    ['message'],
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 10),
                              child: Text(
                                chatList[widget.index]['messages'][index]
                                    ['time'],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 65,
                left: 5,
                bottom: 7,
              ),
              child: textField,
            ),
          ),
        ],
      ),
    );
  }


//function of send message
  void sendMessage() {
    if (textController.text.isNotEmpty) {
      chatList[widget.index]['messages'].add({
        'message': textController.text,
        'time': '  ${TimeOfDay.now().hour.toString()}:${TimeOfDay.now().minute}'
      });
    }
    textController.clear();
    setState(() {});
  }
}
