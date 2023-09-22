import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/utils/database.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({super.key});

  @override
  State<NewGroupScreen> createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  List<UserModel> selectedContact = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: const ListTile(
          title: Text(
            'New Group',
            style: TextStyle(
              fontSize: 21,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            'Add participants',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  users.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                users[index].avatar,
                              ),
                              radius: 27,
                            ),
                            Text(
                              users[index].name,
                            ),
                          ],
                        ),
                        Positioned(
                          right: 0,
                          bottom: 15,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                users.removeAt(index);
                                setState(() {});
                              },
                              child: const Icon(
                                Icons.cancel,
                                color: Color.fromARGB(255, 114, 113, 113),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  selected: users.contains(
                    users[index],
                  ),
                  onTap: () {
                    if (users.contains(
                      users[index],
                    )) {
                      users.remove(users[index]);
                    } else {
                      users.add(
                        users[index],
                      );
                    }

                    setState(() {});
                  },
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          users[index].avatar,
                        ),
                      ),
                      if (users.contains(
                        users[index],
                      ))
                        Positioned(
                          top: 24,
                          left: 24,
                          child: Container(
                            clipBehavior: Clip.none,
                            decoration: BoxDecoration(
                              color: Colors.teal,
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                users.add(
                                  users[index],
                                );
                                setState(() {});
                              },
                              child: const Icon(
                                Icons.done,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  title: Text(
                    users[index].name,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  subtitle: Text(
                    users[index].message,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
