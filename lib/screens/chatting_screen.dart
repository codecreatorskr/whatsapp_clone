import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

class Chat {
  final String name;
  final String avatar;
  final List<String> messages;

  Chat({required this.name, required this.avatar, required this.messages});
}

class ChattingPage extends StatelessWidget {
  // final ChattingPage chat;

  const ChattingPage({
    super.key,
    // required Map<String, dynamic> chat,
    // required this.chat,
  });

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
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'last seen today at 06:00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.5,
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
      body: const Textfield(),
    );
  }
}

class Textfield extends StatefulWidget {
  const Textfield({
    super.key,
  });

  @override
  State<Textfield> createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Card(
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                          Text(
                            chats[index]['message'],
                            style: const TextStyle(fontSize: 18),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  chats[index]['time'],
                                  // style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
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
        // const Expanded(
        //   child: SizedBox(),
        // ),
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
              right: 72,
              left: 5,
              bottom: 18,
            ),
            child: TextField(
              // onChanged: (value) {
              //   log(value, name: 'onChanged');
              // },
              // onEditingComplete: () {
              //   log(textController.text, name: 'onEditingComplete');
              // },
              onSubmitted: (value) {
                chats.add({
                  'message': value,
                  'time':
                      '  ${TimeOfDay.now().hour.toString()}:${TimeOfDay.now().minute}'
                });
                textController.clear();
                setState(() {});
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
    );
  }
}
