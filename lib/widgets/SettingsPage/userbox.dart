import 'package:flutter/material.dart';

import '../profilepic.dart';

typedef MSP = MaterialStateProperty;

class UserBox extends StatelessWidget {
  const UserBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ProfilePic(
            hasNotifications: false,
            margin: EdgeInsets.only(right: 10),
          ),
          const Text(
            "Jumpiniasty",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              elevation: MSP.all(0),
              backgroundColor: MSP.all(Colors.transparent),
              overlayColor: MSP.all(Colors.transparent),
              side: MSP.all(
                BorderSide(color: Theme.of(context).primaryColor),
              ),
            ),
            child: Icon(
              Icons.edit,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
