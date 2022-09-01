import 'package:flutter/material.dart';

import '../profilepic.dart';
import 'package:vibly/pages/settingspage.dart';

class WelcomeHeader extends StatefulWidget {
  const WelcomeHeader({Key? key}) : super(key: key);

  @override
  State<WelcomeHeader> createState() => _WelcomeHeaderState();
}

class _WelcomeHeaderState extends State<WelcomeHeader> {
  String get timeOfDay {
    if (DateTime.now().hour > 0 && DateTime.now().hour < 12) {
      return "Good morning";
    } else if (DateTime.now().hour >= 12 && DateTime.now().hour < 18) {
      return "Good afternoon";
    } else {
      return "Good evening";
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            timeOfDay,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ),
              );
            },
            child: const ProfilePic(
              hasNotifications: true,
              margin: EdgeInsets.only(right: 20),
            ),
          ),
        ],
      ),
    );
  }
}
