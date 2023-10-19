import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

class RecentStatusViewscreen extends StatefulWidget {
  final int index;

  const RecentStatusViewscreen({super.key, required this.index});

  @override
  State<RecentStatusViewscreen> createState() => _RecentStatusViewscreenState();
}

class _RecentStatusViewscreenState extends State<RecentStatusViewscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then(
      (value) {
        if (mounted) {
          Navigator.pop(context);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
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
                  Text(
                    chatListSubtitle[widget.index]['time'],
                    style: const TextStyle(
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
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
              'https://picsum.photos/id/${100 + widget.index}/380/600'),
        ),
      ),
    );
  }
}
