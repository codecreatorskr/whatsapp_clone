import 'package:flutter/material.dart';

class NewCommunityScreen extends StatelessWidget {
  const NewCommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              color: Colors.grey,
            ),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
              child: Text(
                'Create a new community',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 320),
                child: const Text(
                  'Bring together a neighbourhood, school or more. create topic-based groups for members, and easily send them admin annpuncements.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
