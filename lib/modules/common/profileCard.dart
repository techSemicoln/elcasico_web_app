import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        title: const Text(
          'Ashwin M',
          style: TextStyle(fontSize: 16),
        ),
        subtitle:  const Text('8825709215'),
        leading: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
              'https://avatars.githubusercontent.com/u/63783720?s=40&v=4'),
        ),
      ),
    );
  }
}
