import 'package:flutter/material.dart';

import '../widgets/SettingsPage/userbox.dart';
import '../widgets/SettingsPage/theming.dart';
import '../widgets/SettingsPage/logout.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,
        shadowColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(
            height: 2,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        padding: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 10),
              UserBox(),
              SizedBox(height: 20),
              Theming(),
              Logout(),
            ],
          ),
        ),
      ),
    );
  }
}
