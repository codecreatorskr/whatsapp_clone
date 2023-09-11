import 'package:whatsapp_clone/screens/models_uses.dart';
import 'package:whatsapp_clone/screens/new_group_screen.dart';
import 'package:whatsapp_clone/screens/profile_image_screen.dart';

class Routes {
  static const home = '/';
  static const contact = '/ContactSelectScreen';
  static const group = '/NewGroupScreen';
  // static const chat = '/ChattingPage';
  static const profile = '/ProfileImageScreen';

  static final routes = {
    home: (contact) => const ModelsUses(),
    contact: (contact) => const NewGroupScreen(),
    profile: (context) => const ProfileImageScreen(),
    // chat: (context) => ChattingPage(index: index),
  };
}
