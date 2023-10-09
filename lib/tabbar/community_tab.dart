import 'package:flutter/material.dart';

class CommunityTabBar extends StatelessWidget {
  const CommunityTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              iconColor: Colors.white,
              leading: Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(251, 200, 201, 201),
                    ),
                    child: const Icon(
                      Icons.groups,
                      size: 35,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32, top: 28),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const Icon(
                        Icons.add_circle,
                        size: 25,
                        color: Colors.teal,
                      ),
                    ),
                  ),
                ],
              ),
              title: const Text(
                "New community",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
            ),
          ),
          const Divider(
            thickness: 0.6,
          ),
          ListTile(
            iconColor: Colors.white,
            leading: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromARGB(251, 200, 201, 201),
              ),
              child: const Icon(
                Icons.groups,
                size: 35,
              ),
            ),
            title: const Text(
              "Emoji Express ..",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
