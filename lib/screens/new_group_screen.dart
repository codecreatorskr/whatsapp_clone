import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/user_model.dart';
import 'package:whatsapp_clone/utils/database.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({super.key});

  @override
  State<NewGroupScreen> createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  List<UserModel> selectedUser = [];

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  selectedUser.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                selectedUser[index].avatar,
                              ),
                              radius: 27,
                            ),
                            Text(
                              selectedUser[index].name,
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
                                selectedUser.removeAt(index);
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
                  selected: selectedUser.contains(
                    users[index],
                  ),
                  onTap: () {
                    if (selectedUser.contains(
                      users[index],
                    )) {
                      selectedUser.remove(users[index]);
                    } else {
                      selectedUser.add(
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
                      if (selectedUser.contains(
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
