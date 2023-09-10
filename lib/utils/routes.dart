import 'package:whatsapp_clone/screens/landing_screen.dart';
import 'package:whatsapp_clone/screens/new_group_screen.dart';

class Routes {
  static const home = '/';
  static const contact = '/ContactSelectScreen';
  static const group = '/NewGroupScreen';

  static final routes = {
    home: (contact) => const WhatsAppLandingScreen(),
    contact: (contact) => const NewGroupScreen(),
  };
}
