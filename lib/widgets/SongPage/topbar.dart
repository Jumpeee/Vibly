import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          highlightColor: Colors.transparent,
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
        const Spacer(),
        const SizedBox(width: 50),
        const Text(
          "Now Playing",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        Wrap(
          children: [
            IconButton(
              onPressed: () {},
              highlightColor: Colors.transparent,
              icon: const Icon(
                Icons.share_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
