import 'messages_model.dart';

class UserModel {
  // final List<Map<String, dynamic>> name;
  final  List<Map<String, dynamic>>  avatar;
  final List<Messages> message;

  UserModel({
    // required this.name,
    required this.avatar,
    required this.message,
  });
}
