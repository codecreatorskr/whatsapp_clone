import 'package:flutter/material.dart';

// List<String> image = [
//   'https://rukminim2.flixcart.com/fk-p-flap/1100/500/image/97f24748652e61ae.png?q=20'
// ];

class NetworkImage extends StatelessWidget {
  const NetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
        'https://rukminim2.flixcart.com/fk-p-flap/1100/500/image/97f24748652e61ae.png?q=20');
  }
}
