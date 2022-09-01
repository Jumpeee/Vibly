import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  final bool hasNotifications;
  final double size;
  final EdgeInsets margin;

  const ProfilePic({
    this.size = 60,
    this.margin = EdgeInsets.zero,
    required this.hasNotifications,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hasNotifications ? size + 5 : size,
      width: hasNotifications ? size + 5 : size,
      child: Stack(
        children: [
          Container(
            height: size,
            width: size,
            margin: margin,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/jake.jpg"),
              ),
              shape: BoxShape.circle,
            ),
          ),
          Visibility(
            visible: hasNotifications,
            child: Positioned(
              top: 3,
              left: 33,
              child: Container(
                width: 14,
                height: 14,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 23, 23, 25),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
