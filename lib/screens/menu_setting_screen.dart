import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

class MenuSettingScreen extends StatelessWidget {
  const MenuSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.search,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/dp.webp'),
            ),
            title: Text(
              "Saurabh",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Text('Available'),
            trailing: Icon(
              Icons.qr_code,
              color: Colors.teal,
              size: 30,
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: settingIconList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: CircleAvatar(
                      child: Icon(settingIconList[index]['icons'])),
                  title: Text(
                    setingScreenTitleSubtitle[index]['title'],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // subtitle: setingScreenTitleSubtitle[index]['subtitle'],
                  // trailing: const Icon(
                  //   Icons.qr_code,
                  //   color: Colors.teal,
                  //   size: 30,
                  // ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
