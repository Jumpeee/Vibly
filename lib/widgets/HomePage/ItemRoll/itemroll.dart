import 'package:flutter/material.dart';

class ItemRoll extends StatefulWidget {
  final String caption;
  final List<Widget> items;

  const ItemRoll({
    required this.caption,
    required this.items,
    Key? key,
  }) : super(key: key);

  @override
  State<ItemRoll> createState() => _ItemRollState();
}

class _ItemRollState extends State<ItemRoll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.caption,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              Container(
                width: 74,
                height: 34,
                margin: const EdgeInsets.only(right: 10),
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                    //IMPLEMENT SO IT SHOWS A FULL LIST OF ITEMS IN THE SELECTED [type]
                  },
                  child: const Text(
                    "Show all",
                    style: TextStyle(
                      color: Color.fromARGB(255, 140, 140, 140),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: widget.items,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
