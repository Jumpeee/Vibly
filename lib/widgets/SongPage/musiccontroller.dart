import 'package:flutter/material.dart';

import './customslider.dart';

class MusicController extends StatelessWidget {
  const MusicController({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const SizedBox(height: 15),
              const CustomSlider(),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.repeat,
                      color: Color.fromARGB(255, 140, 140, 140),
                      size: 28,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_double_arrow_left,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.pause,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_double_arrow_right,
                      color: Colors.white,
                      size: 36,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.repeat,
                      color: Color.fromARGB(255, 140, 140, 140),
                      size: 28,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
