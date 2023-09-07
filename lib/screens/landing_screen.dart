import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/menu_dialod.dart';
import 'package:whatsapp_clone/tabbar/calls_tab.dart';
import 'package:whatsapp_clone/tabbar/chat_tab.dart';
import 'package:whatsapp_clone/tabbar/community_tab.dart';
import 'package:whatsapp_clone/tabbar/status_tab.dart';

class WhatsAppLandingScreen extends StatelessWidget {
  const WhatsAppLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
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
            const SliverAppBar(
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Color.fromARGB(255, 214, 214, 214),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 4,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                padding: EdgeInsets.only(right: 10),
                tabs: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.groups,
                      ),
                    ],
                  ),
                  Tab(
                    text: "Chats",
                  ),
                  Tab(
                    text: "Status",
                  ),
                  Tab(
                    text: "Calls",
                  ),
                ],
              ),
            ),
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
  // appBar: AppBar(
  //   backgroundColor: Colors.teal,
  //   title: Title(
  //     color: Colors.white,
  //     child: const Text(
  //       'WhatsApp',
  //       style:
  //           TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
  //     ),
  //   ),
  //   actions: [
  //     const Icon(
  //       Icons.camera_alt_outlined,
  //     ),
  //     const Padding(
  //       padding: EdgeInsets.symmetric(horizontal: 30),
  //       child: Icon(Icons.search),
  //     ),
  //     IconButton(
  //       onPressed: () {
  //         showDialog(
  //           // barrierColor: Colors.amber,
  //           context: context,
  //           builder: (context) => const Padding(
  //             padding: EdgeInsets.only(left: 150, bottom: 400),
  //             child: MenuDialog(),
  //           ),
  //         );
  //       },
  //       icon: const Icon(Icons.more_vert),
  //     ),
  // ],
  //     bottom: const TabBar(
  //       indicatorColor: Colors.white,
  //       labelColor: Colors.white,
  //       unselectedLabelColor: Color.fromARGB(255, 214, 214, 214),
  //       indicatorSize: TabBarIndicatorSize.tab,
  //       indicatorWeight: 4,
  //       labelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
  //       padding: EdgeInsets.only(right: 10),
  //       tabs: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Icon(
  //               Icons.groups,
  //             ),
  //           ],
  //         ),
  //         Tab(
  //           text: "Chats",
  //         ),
  //         Tab(
  //           text: "Status",
  //         ),
  //         Tab(
  //           text: "Calls",
  //         ),
  //       ],
  //     ),
  //   ),
  //   body: const TabBarView(
  //     children: [
  //       Center(child: CommunityTabBar()),
  //       Center(child: ChatTabBarScreen()),
  //       Center(child: StatusTabBar()),
  //       Center(child: CallsTabBar()),
  //     ],
  // ),
  // ),
//     );
//   }
// }
