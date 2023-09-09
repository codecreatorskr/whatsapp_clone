import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/menu_setting_screen.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.only(top: 2),
            child: Text(
              "New group",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.only(top: 17),
            child: Text(
              "Linked Devices",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ),
        const PopupMenuItem(
          child: const Padding(
            padding: EdgeInsets.only(top: 17),
            child: Text(
              "Starred message",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ),
        const PopupMenuItem(
          child: Padding(
            padding: EdgeInsets.only(top: 17),
            child: Text(
              "Payment",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MenuSettingScreen(),
              ),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(top: 17),
            child: Text(
              "Setting",
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        )
      ],
    );
  }
}// import 'package:flutter/material.dart';

// class MenuDialog extends StatelessWidget {
//   ,const MenuDialog({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ,const Padding(
//       padding: EdgeInsets.only(left: 10),
//       child: Dialog(
//           // shape: Border(),
//           background,
//           child: Padding(
//             padding: EdgeInsets.symmetric(vertical: 17, horizontal: 17),
//             child: FittedBox(
//               alignment: Alignment.topLeft,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 // mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 2),
//                     child: Text(
//                       "New group",
//                       style: TextStyle(fontSize: 10, ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: Text(
//                       "New broadcast",
//                       style: TextStyle(fontSize: 10, ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: Text(
//                       "Linked Devices",
//                       style: TextStyle(fontSize: 10, ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: Text(
//                       "Starred message",
//                       style: TextStyle(fontSize: 10, ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: Text(
//                       "Payment",
//                       style: TextStyle(fontSize: 10, ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: Text(
//                       "Setting",
//                       style: TextStyle(fontSize: 10, ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }



// ListTile(
//   onTap: () {
//     showDialog(
//       context: context,
//       builder: (context) => FittedBox(
//         fit: BoxFit.cover,
//         child: Dialog(
//           clipBehavior: Clip.hardEdge,
//           child: Column(
//             children: [
//               Stack(
//                 alignment: Alignment.topRight,
//                 children: [
//                   Image.asset(
//                     chatList[index]['avatar'],
//                     height: 40,
//                     width: 50,
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.chat), // Add the chat icon
//                     onPressed: () {
//                       // Add your chat icon onTap logic here
//                     },
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.info), // Add the info icon
//                     onPressed: () {
//                       // Add your info icon onTap logic here
//                     },
//                   ),
//                 ],
//               ),
//               // Add other content to the dialog
//             ],
//           ),
//         ),
//       ),
//     );
//   },
// )
