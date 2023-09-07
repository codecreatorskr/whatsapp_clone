import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/menu_dialod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
        // fontFamily: 'RopaSans',
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              title: Title(
                color: Colors.white,
                child: const Text(
                  'WhatsApp',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              actions: [
                const Icon(
                  Icons.camera_alt_outlined,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {
                    showDialog(
                      // barrierColor: Colors.amber,
                      context: context,
                      builder: (context) => const Padding(
                        padding: EdgeInsets.only(left: 150, bottom: 400),
                        child: MenuDialog(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),

            // const SliverAppBar(
            // bottom: TabBar(
            //   indicatorColor: Colors.white,
            //   labelColor: Colors.white,
            //   unselectedLabelColor: Color.fromARGB(255, 214, 214, 214),
            //   indicatorSize: TabBarIndicatorSize.tab,
            //   indicatorWeight: 4,
            //   labelStyle:
            //       TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
            //   padding: EdgeInsets.only(right: 10),
            //   tabs: [
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(
            //           Icons.groups,
            //         ),
            //       ],
            //     ),
            //     Tab(
            //       text: "Chats",
            //     ),
            //     Tab(
            //       text: "Status",
            //     ),
            //     Tab(
            //       text: "Calls",
            //     ),
            //   ],
            // ),
            // ),
            // const TabBarView(
            //   children: [
            //     // Center(child: CommunityTabBar()),
            //     // Center(child: ChatTabBarScreen()),
            //     // Center(child: StatusTabBar()),
            //     // Center(child: CallsTabBar()),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
//     );
//   }
// }
