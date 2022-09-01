import 'package:flutter/material.dart';

class Theming extends StatelessWidget {
  const Theming({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Theme",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Wrap(
          spacing: 20,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
