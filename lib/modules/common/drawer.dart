import 'package:elclasico_web/modules/common/profileCard.dart';
import 'package:flutter/material.dart';

class CommonDrawer extends StatefulWidget {
  const CommonDrawer({Key? key}) : super(key: key);

  @override
  State<CommonDrawer> createState() => _CommonDrawerState();
}

class _CommonDrawerState extends State<CommonDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const ProfileCard(),
          const Divider(),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("My Bookings"),
          )
        ],
      ),
    );
  }
}
