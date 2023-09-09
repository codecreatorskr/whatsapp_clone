import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/edit_stauts_screen.dart';
import 'package:whatsapp_clone/screens/status_view_screen.dart';
import 'package:whatsapp_clone/utils/database.dart';

class StatusTabBar extends StatelessWidget {
  const StatusTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              width: 40,
              child: FloatingActionButton(
                heroTag: 'edit_button',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditStatusScreen(),
                    ),
                  );
                },
                backgroundColor: const Color.fromARGB(255, 167, 238, 203),
                child: const Icon(
                  Icons.edit,
                  color: Color.fromRGBO(18, 140, 126, 2),
                ),
              ),
            ),
          ),
          FloatingActionButton(
            heroTag: 'camera_button',
            onPressed: () {
              log("camera");
            },
            backgroundColor: const Color.fromRGBO(18, 140, 126, 2),
            child: const Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: const StatusBody(),
    );
  }
}

class StatusBody extends StatelessWidget {
  const StatusBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/dp.webp'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22, top: 18),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.add_circle,
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text(
              "My Status",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            subtitle: const Text("Tap to add status update"),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22, top: 8),
            child: Text("Recent updates"),
          ),

          // recent Icon(icon)
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                iconColor: Colors.white,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StatusViewscreen(index: index),
                      ));
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    chatList[index]['avatar'],
                  ),
                ),
                title: Text(
                  chatList[index]['name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
                subtitle: Text(
                  chatListSubtitle[index]['time'],
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.only(top: 12, left: 22),
            child: Text('Viewed updates'),
          ),

          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                iconColor: Colors.white,
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    nameList[index]['avatar'],
                  ),
                ),
                title: Text(
                  nameList[index]['name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
                ),
                subtitle: Text(
                  chatListSubtitle[index]['time'],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
