import 'package:flutter/material.dart';

typedef MSP = MaterialStateProperty;

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MSP.all(Theme.of(context).backgroundColor),
        fixedSize: MSP.all(const Size(100, 50)),
      ),
      child: Text(
        "Log out",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 18,
        ),
      ),
    );
  }
}
