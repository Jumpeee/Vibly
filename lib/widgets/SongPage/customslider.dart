import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    double sliderValue = 50;
    return SizedBox(
      width: 360,
      child: Column(
        children: [
          SliderTheme(
            data: SliderThemeData(
              activeTrackColor: Theme.of(context).primaryColor,
              inactiveTrackColor: const Color.fromARGB(255, 140, 140, 140),
              thumbColor: Theme.of(context).primaryColor,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 5),
              trackHeight: 2,
              overlayShape: SliderComponentShape.noOverlay,
            ),
            child: Slider(
              min: 0,
              max: 100,
              value: sliderValue,
              onChanged: (val) {},
            ),
          ),
          Row(
            children: const [
              SizedBox(width: 5),
              Text(
                "0:36",
                style: TextStyle(
                  color: Color.fromARGB(255, 140, 140, 140),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Spacer(),
              Text(
                "1:12",
                style: TextStyle(
                  color: Color.fromARGB(255, 140, 140, 140),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 5),
            ],
          ),
        ],
      ),
    );
  }
}
