//Drawer list (images links)

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/messages.dart';
import 'package:whatsapp_clone/models/user_model.dart';

List<Map<String, dynamic>> myList = [
  {
    'src':
        "https://rukminim2.flixcart.com/www/100/14/promos/05/07/2019/37c19766-0af6-45c8-866a-720adfa534e2.png?q=80",
    'text': ("My Account"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/11/07/2018/70e5346e-fce4-4718-8e56-27be8492faa5.png?q=40",
    'text': "Flipkart Plus Zone",
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/13/11/2019/d19caf2b-e593-4e6b-93e5-a6c388210736.png?q=40",
    'text': ("All Categories"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/26/01/2022/4495e6c3-7a67-4e74-b754-31aa3bd64272.png?q=40",
    'text': ("Trending Store"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/15/06/2020/3c2eff2c-685f-4002-b3c9-d6942563af76.jpg?q=40",
    'text': ("More on Flipkart"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/01/08/2019/23d1528b-d57d-440e-a21f-f374f518b6ed.png?q=40",
    'text': "Choose Language",
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/08/04/2016/a12880b1-9c2b-4b4b-9029-31ba9ff666bf.png?q=40",
    'text': "Offer Zone",
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/18/01/2019/c79d21c6-b201-42a7-b37c-6405c6c4fbf5.png?q=40",
    'text': ("Sell on Flipkart"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=40",
    'text': ("My Orders"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/31/08/2016/3afaefd4-3961-4cac-921c-b9517c96ad47.png?q=40",
    'text': ("Coupons"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/100/14/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=80",
    'text': ("My Cart"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=40",
    'text': ("My Wishlist"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=40",
    'text': ("My Account"),
  },
  {
    'src':
        "https://rukminim2.flixcart.com/www/300/42/promos/10/03/2017/f93182c9-5b3e-4f06-950d-c41745611f00.png?q=40",
    'text': ("My Notification"),
  },
];
// Drawer Text List
List<String> textList = ["Notification Perference", "Help Center", "Legal"];

//Landing Page Images List(1st row images)flipkart
List<String> landingImages = [
  "assets/images/categories.png",
  "assets/images/offerzone.png",
  "assets/images/mobile.jpg",
  "assets/images/fashion.png",
  "assets/images/appliance.jpg",
  "assets/images/electronics.png",
  "assets/images/electronics.png",
  "assets/images/mobile.jpg",
  "assets/images/offerzone.png",
  "assets/images/electronics.png",
  "assets/images/electronics.png",
  "assets/images/offerzone.png",
  "assets/images/electronics.png",
  "assets/images/mobile.jpg",
  "assets/images/electronics.png",
  "assets/images/offerzone.png",
  "assets/images/electronics.png",
  "assets/images/mobile.jpg",
  "assets/images/offerzone.png",
  "assets/images/mobile.jpg",
  "assets/images/electronics.png",
  "assets/images/mobile.jpg",
];

List<Map<String, dynamic>> chatList = [
  {
    "avatar": "assets/images/dp.webp",
    "name": "Saurabh",
    'messages': [
      {'message': 'Hello !!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/tony.jpg",
    "name": "Suraj",
    'messages': [
      {'message': 'Hello Suraj!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/avatar3.jpg",
    "name": "Ajay Kr",
    'messages': [
      {'message': 'Hello Ajay!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/dp girl 6.jpeg",
    "name": " Anaya ",
    'messages': [
      {'message': 'Hello Anaya !!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/images123.jpg",
    "name": "Rimjhim ",
    'messages': [
      {'message': 'Hello Rimjhim!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/avatar5.png",
    "name": "Rajnish",
    'messages': [
      {'message': 'Hello Rajnish!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/Ironman art.jpeg",
    "name": "Sachin",
    'messages': [
      {'message': 'Hello Sachin!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/dp4.jpg",
    "name": "Raj Kr",
    'messages': [
      {'message': 'Hello Raj!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/dp5.jpeg",
    "name": "Ritik",
    'messages': [
      {'message': 'Hello Ritik!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/avatar2.jpg",
    "name": "Mahakal",
    'messages': [
      {'message': 'Hello Mahakal!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/avatar4.jpg",
    "name": "Raj Kr",
    'messages': [
      {'message': 'Hello Rajkumar!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
  {
    "avatar": "assets/images/avatar3.jpg",
    "name": "Kumar",
    'messages': [
      {'message': 'Hello Kumar!!', 'time': '12:00'},
      {'message': 'How are you', 'time': '05:05'},
      {'message': 'I am fine.', 'time': '08:25'},
      {'message': 'What about you', 'time': '06:10'},
    ]
  },
];

//*****************USer Message List******************/
List<String> userMessageList = [
  "hey! Good Morning💌",
  "Inbox happiness loading...📥",
  "hey ! how are you",
  "Knock, knock! Who's there? Your awesome message!",
  "A message is like a smile that pops up on your screen. 😁",
  "Let's chat! I've got coffee and emojis ready. ☕😄",
  "Incoming positivity!",
  "The best kind of notifications are from friends. 📱❤️",
  "Unread messages are like little surprises waiting to be opened.",
  "🔔 Brace yourself for incoming awesomeness! 🎉",
  "💌 New message alert: Your thoughts are on the way! 📬",
  "📲 Ping! Your message radar is on point! 📡",
  "📥 Inbox unlocked! What's on your mind? 🤔",
  "📝 Text me like it's the best story you've ever read. 📖",
  "💬 The inbox is open, and my heart is ready. ❤️",
  "💬 Ready to receive your brilliance! 🌟",
  "📩 Every message is a piece of someone's heart. ❤️",
  "📱 Waiting for your message like it's the best surprise. 🎁",
  "💬 Hit me with your words of wisdom! 💡",
  "📲 My phone is buzzing with anticipation! 📚",
  "📬 Messages from you are my favorite notifications! ❤️",
  "Hit me with your words of wisdom!",
  "I can't wait to see what you have to say!",
  "The excitement of a new message never gets old.",
  "Your message just brightened my day!",
  "Life is short, and so are my messages. 😄",
  "A virtual hug in the form of a message.",
  "My phone just got a little happier because of you!",
  "Brace yourself for incoming awesomeness!",
  "New message alert: Your thoughts are on the way!",
  "Ping! Your message radar is on point!",
  "Let the conversations begin!",
  "Messages: The modern-day love letters.",
  "The inbox is open, and my heart is ready.",
  "Inbox unlocked! What's on your mind?",
  "Text me like it's the best story you've ever read.",
  "Every message is a piece of someone's heart.",
  "Waiting for your message like it's the best surprise.",
  "Hit me with your words of wisdom!",
  "Ready to receive your brilliance!",
  "One message can change the course of a day.",
  "My phone is buzzing with anticipation!",
  "Messages from you are my favorite notifications!",
  "Your new message has been arrived",
  "Message Description 1",
  "Message Description 2",
  "Your new message has been arrived",
  "hey ! how are you",
  "hey ! how are you",
  "Message Description",
  " New Message",
  "Message Description 2",
  "Message Description 2",
];
List<Map<String, dynamic>> chatListSubtitle = [
  {"message": "Message Description", 'time': " Today, 00:00", 'subtitle': ''},
  {"message": "Your new message has been arrived", 'time': " Today, 12:00"},
  {"message": "Message Description 1", 'time': " Today,04:00"},
  {"message": "Message Description 2", 'time': " Today, 09:00"},
  {"message": "Your new message has been arrived", 'time': " Today, 05:00"},
  {"message": "Good Morning", 'time': " Today, 23:00"},
  {"message": "hey ! how are you", 'time': " Today, 05:00"},
  {"message": "hey ! how are you", 'time': " Today, 15:00"},
  {"message": "Message Description", 'time': " Today, 11:00"},
  {"message": " New Message", 'time': " Today, 02:00"},
  {"message": "Message Description 2", 'time': " Today, 22:00"},
  {"message": "Message Description 2", 'time': " Today, 10:00"},
];

List<Map<String, dynamic>> statusIcon = [
  {"statusicon": "assets/images/avatar2.jpg", "status": "Anaya"},
  {"statusicon": "assets/images/avatar3.jpg", "status": "Ajay Kr"},
];

//list for whatsapp menu dialog .
//
List<Map<String, dynamic>> menuText = [
  {
    "text": "assets/images/avatar2.jpg",
  },
  {
    "text": "assets/images/avatar3.jpg",
  },
];

//➡️➡️Select contact Name and invite  text list.
List<Map<String, dynamic>> invitedwhatsapplist = [
  {"Name": "Aaravi", 'invite': " Invite"},
  {"Name": "Aditi", 'invite': "Invite"},
  {"Name": "Aahana", 'invite': " Invite"},
  {"Name": "Baadal", 'invite': "Invite"}
];

//➡️➡️ WhatsApp New Group Images and Name list.
List<Map<String, dynamic>> nameList = [
  {"avatar": "assets/images/avatar1.png", "name": "Aaliyah"},
  {"avatar": "assets/images/tony.jpg", "name": "Abigail"},
  {"avatar": "assets/images/avatar4.jpg", "name": "Bobby"},
  {"avatar": "assets/images/images123.jpg", "name": "Bryson "},
  {"avatar": "assets/images/avatar1.png", "name": "Calvin"},
  {"avatar": "assets/images/avatar1.png", "name": "Cullen"},
  {"avatar": "assets/images/avatar.png", "name": "Damon"},
  {"avatar": "assets/images/avatar2.jpg", "name": "Dream"},
  {"avatar": "assets/images/avatar3.jpg", "name": "Elle"},
  {"avatar": "assets/images/avatar3.jpg", "name": "Ellianna"},
  {"avatar": "assets/images/avatar1.png", "name": "Finley"},
  {"avatar": "assets/images/tony.jpg", "name": "Giavanna"},
  {"avatar": "assets/images/avatar4.jpg", "name": "Hailee"},
  {"avatar": "assets/images/avatar2.jpg", "name": " Itzayana "},
  {"avatar": "assets/images/images123.jpg", "name": "Jamie "},
  {"avatar": "assets/images/avatar4.jpg", "name": "Kalani"},
  {"avatar": "assets/images/avatar1.png", "name": "Lyanna"},
  {"avatar": "assets/images/avatar1.png", "name": "Mackenzie"},
  {"avatar": "assets/images/avatar.png", "name": "Noor"},
  {"avatar": "assets/images/avatar2.jpg", "name": "Mahakal"},
  {"avatar": "assets/images/avatar3.jpg", "name": "Roselyn"},
  {"avatar": "assets/images/avatar3.jpg", "name": "Kumar"},
  {"avatar": "assets/images/avatar1.png", "name": "Sunny"},
  {"avatar": "assets/images/tony.jpg", "name": "Zaria "},
  {"avatar": "assets/images/avatar4.jpg", "name": "Zora"},
];

// WhatsApp New Group Subtitle
List<String> newgroupSubtitle = [
  'Available ☺️',
  'Busy ',
  'At school At the movie 🏫',
  'At work',
  'Battery about to die',
  'Can\'t talk, WhatsApp only',
  'In a meeting',
  'At the gym',
  'Slepping',
  'Urgent calls only',
  'Available',
  'Busy',
  'At schoolAt the movie',
  'At work',
  'Battery about to die',
  'Can\'t talk, WhatsApp only',
  'In a meeting',
  'At the gym',
  'Slepping',
  'Urgent calls only',
  'Available',
  'Busy',
  'At schoolAt the movie',
  'At work',
  'Battery about to die',
  'Can\'t talk, WhatsApp only',
  'In a meeting',
];
List<String> callssubtitle = [
  'Available ☺️',
  'Busy ',
  'At school At the movie 🏫',
  'At work',
  'Battery about to die',
  'Can\'t talk, WhatsApp only',
  'In a meeting',
  'At the gym',
  'Slepping',
  'Urgent calls only',
  'Available',
  'Busy',
];

//************* setting Icons_List*******************/
List<Map<String, IconData>> settingIconList = [
  {
    'icons': Icons.key,
  },
  {
    'icons': Icons.lock,
  },
  {
    'icons': Icons.emoji_emotions,
  },
  {
    'icons': Icons.chat,
  },
  {
    'icons': Icons.notifications,
  },
  {
    'icons': Icons.data_usage,
  },
  {
    'icons': Icons.language,
  },
  {
    'icons': Icons.help_outline_sharp,
  },
  // {
  //   'icons': Icons.group,
  // },
];
//************* setting List*******************/

List<Map<String, dynamic>> setingScreenTitleSubtitle = [
  {'title': 'Account', 'subtitle': 'Security notification, change number'},
  {'title': 'Privacy', 'subtitle': 'Block contacts, disappearing message'},
  {'title': 'Avatar', 'subtitle': 'Create, edit, profile photo'},
  {'title': 'Chats', 'subtitle': 'Theme, walpapers,char history'},
  {'title': 'Notification', 'subtitle': 'Message, group & call tones'},
  {'title': 'Storage and data', 'subtitle': 'Network usage, auto-download'},
  {'title': 'App language', 'subtitle': "English(device's language)"},
  {'title': 'Help', 'subtitle': 'Help center, contact us privacy policy'},
  // {'title': 'Invite a friend', 'subtitle': ''},
];
//Calls tab Subtitle
List<String> subtitle = [
  '↙ 1 September, 12:05',
  '↙ 1 September, 05:10',
  '↗ 1 September, 10:05',
  '↙ 1 September, 12:55',
  '↗ 1 September, 09:30',
  '↙ 1 September, 01:55',
  '↗ 1 September, 08:45',
  '↗ 1 September, 09:10',
  '↙ 1 September, 10:05',
  '↗ 1 September, 05:15',
  '↙ 1 September, 12:55',
  '↗ 1 September, 04:59',
];
List<Map<String, IconData>> arrowicon = [
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
  {
    'icons': Icons.arrow_outward_rounded,
  },
];

//(Models) List of models classes.
List<UserModel> users = List.generate(
  20,
  (index) => UserModel(
    name: 'some${index + 1}',
    avatar: 'https://picsum.photos/id/${100 + index}/380/600',
    meaasge: List.generate(
      20,
      (index) => Messages(
        text: 'text${index + 12}',
        time: TimeOfDay.now(),
      ),
    ),
  ),
);
