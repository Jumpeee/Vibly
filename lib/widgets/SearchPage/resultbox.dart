import 'package:flutter/material.dart';

import './resultitem.dart';

typedef MSP = MaterialStateProperty;

class ResultBox extends StatefulWidget {
  const ResultBox({Key? key}) : super(key: key);

  @override
  State<ResultBox> createState() => _ResultBoxState();
}

class _ResultBoxState extends State<ResultBox> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            buildButton(
              index: 0,
              caption: "Recently searched",
            ),
            const Spacer(),
            buildButton(
              index: 1,
              caption: "Results",
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 400,
          margin: const EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: const [
                ResultItem(
                  author: "Jumpee",
                  song: "Ur mommy",
                  duration: 2.5,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildButton({
    required int index,
    required String caption,
  }) {
    return TextButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      style: ButtonStyle(
        overlayColor: MSP.all(Colors.transparent),
      ),
      child: Text(
        caption,
        style: TextStyle(
          color: selectedIndex == index ? Colors.white : Colors.grey,
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
    );
  }
}
