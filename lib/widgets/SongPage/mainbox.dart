import 'package:flutter/material.dart';

class MainBox extends StatelessWidget {
  const MainBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: 440,
      child: Column(
        children: [
          Container(
            width: 360,
            height: 360,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 12,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/cool.jpg"),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Blinding Lights",
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "The Weeknd",
                    style: TextStyle(
                        color: Color.fromARGB(255, 140, 140, 140),
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  )
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline,
                  color: Color.fromARGB(255, 140, 140, 140),
                  size: 32,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
