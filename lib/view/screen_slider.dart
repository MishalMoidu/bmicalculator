import 'package:calculator/controller/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class BuildSlider extends ConsumerWidget {
  const BuildSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _height = ref.watch(BmiHeight);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffeeeeee),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 178, 185, 191),
                blurRadius: 8.0,
                offset: Offset(5, 5)),
          ]),
      width: 165,
      height: 435,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Height',
            style: GoogleFonts.poppins(
                color: Color.fromARGB(255, 130, 132, 133), fontSize: 16),
          ),
          SizedBox(
            height: 385,
            child: SfSlider.vertical(
              activeColor: Color(0xff58c9e0),
              inactiveColor: Color.fromARGB(255, 188, 191, 192),
              min: 100.0,
              max: 250.0,
              value: _height,
              interval: 25,
              showTicks: true,
              showLabels: true,
              enableTooltip: true,
              minorTicksPerInterval: 4,
              // stepSize: 10.0,
              onChanged: (dynamic value) {
                ref.read(BmiHeight.notifier).state = value;
              },
            ),
          ),
        ],
      ),
    );
  }
}
