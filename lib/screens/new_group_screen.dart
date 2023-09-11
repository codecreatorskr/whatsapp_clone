import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/database.dart';

class NewGroupScreen extends StatefulWidget {
  const NewGroupScreen({super.key});

  @override
  State<NewGroupScreen> createState() => _NewGroupScreenState();
}

class _NewGroupScreenState extends State<NewGroupScreen> {
  List<String> selectedContacts = [];

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
                                nameList[index]['avatar'],
                              ),
                              radius: 27,
                            ),
                            Text(
                              nameList[index]['name'],
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
              itemCount: nameList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  selected: selectedContacts.contains(
                    nameList[index].toString(),
                  ),
                  onTap: () {
                    if (selectedContacts.contains(
                      nameList[index].toString(),
                    )) {
                      selectedContacts.remove(
                        nameList[index]['avatar'],
                      );
                    } else {
                      selectedContacts.add(
                        nameList[index]['avatar'],
                      );
                    }

                    setState(() {});
                  },
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          nameList[index]['avatar'],
                        ),
                      ),
                      if (selectedContacts.contains(nameList[index]['avatar']))
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
                                  nameList[index]['avatar'],
                                );
                                setState(() {});
                              },
                              child: const Icon(
                                Icons.check,
                                size: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  title: Text(
                    nameList[index]['name'],
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  subtitle: Text(newgroupSubtitle[index]),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
