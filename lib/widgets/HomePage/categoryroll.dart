import 'package:flutter/material.dart';

class CategoryRoll extends StatefulWidget {
  final Function(int) onSelect;
  const CategoryRoll({required this.onSelect, Key? key}) : super(key: key);

  @override
  State<CategoryRoll> createState() => _CategoryRollState();
}

class _CategoryRollState extends State<CategoryRoll> {
  int? selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _rollButton(caption: "All", index: 0),
            const SizedBox(width: 20),
            _rollButton(caption: "Music", index: 1),
            const SizedBox(width: 20),
            _rollButton(caption: "Podcasts", index: 2),
            const SizedBox(width: 20),
            _rollButton(caption: "Rock", index: 3)
          ],
        ),
      ),
    );
  }

  Widget _rollButton({required String caption, required int index}) {
    return GestureDetector(
      onTap: () {
        widget.onSelect(index);
        setState(() {
          selectedItem = index;
        });
      },
      child: AnimatedContainer(
        height: 44,
        width: 90,
        alignment: Alignment.center,
        duration: const Duration(milliseconds: 200),
        curve: Curves.ease,
        decoration: BoxDecoration(
          color: index == selectedItem
              ? Theme.of(context).primaryColor
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          caption,
          style: TextStyle(
            color: index == selectedItem ? Colors.black : Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
