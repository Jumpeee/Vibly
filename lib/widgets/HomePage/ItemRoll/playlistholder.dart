import 'dart:ui';

import 'package:flutter/material.dart';

class PlaylistHolder extends StatelessWidget {
  final String caption;
  final String description;

  const PlaylistHolder({
    required this.caption,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 200,
        width: 165,
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/cool.jpg"),
          ),
        ),
        child: Container(
          height: 75,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: const Color.fromARGB(255, 41, 41, 41).withOpacity(0.1),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 12,
                sigmaY: 12,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.only(left: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      caption,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 140, 140, 140),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
