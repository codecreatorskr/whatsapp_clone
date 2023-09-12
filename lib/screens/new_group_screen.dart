import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({super.key});

  @override
  State<NewGroupScreen> createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  List<Map<String, dynamic>> selectedContacts = [];

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
                  selectedContacts.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                selectedContacts[index]['avatar'],
                              ),
                              radius: 27,
                            ),
                            Text(
                              selectedContacts[index]['name'],
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
                                selectedContacts.removeAt(index);
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
              itemCount: users[0].avatar.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  selected: selectedContacts.contains(
                    users[index].avatar[index],
                  ),
                  onTap: () {
                    if (selectedContacts.contains(
                      users[index].avatar[index],
                    )) {
                      selectedContacts.remove(
                        users[index].avatar[index],
                      );
                    } else {
                      selectedContacts.add(
                        users[index].avatar[index],
                      );
                    }

                    setState(() {});
                  },
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          users[index].avatar[index]['avatar'],
                        ),
                      ),
                      if (selectedContacts.contains(
                        users[index].avatar[index],
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
                                selectedContacts.add(
                                  users[index].avatar[index]['avatar'],
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
                    users[index].avatar[index]['name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  subtitle: Text(
                    users[index].avatar[index]['subtitle'],
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
