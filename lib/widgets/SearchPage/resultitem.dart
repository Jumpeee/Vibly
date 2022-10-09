import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  final String song;
  final String author;
  final double duration;

  const ResultItem({
    required this.song,
    required this.author,
    required this.duration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 15,
    );

    return Container(
      width: double.infinity,
      height: 60,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 51, 51, 51),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 117, 117, 117)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            song,
            style: textStyle,
          ),
          Text(
            author,
            style: textStyle,
          ),
          Text(
            "$duration min",
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
