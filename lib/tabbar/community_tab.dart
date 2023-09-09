import 'package:flutter/material.dart';

class CommunityTabBar extends StatelessWidget {
  const CommunityTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                iconColor: Colors.white,
                leading: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(253, 40, 132, 122),
                    ),
                    child: const Icon(Icons.group_add_rounded)),
                title: const Text(
                  "New community",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
