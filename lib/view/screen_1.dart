import 'package:calculator/controller/bmi_controller.dart';
import 'package:calculator/view/screen_2.dart';
import 'package:calculator/view/screen_bmi_icon.dart';
import 'package:calculator/view/screen_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ScreenMain extends ConsumerWidget {
  ScreenMain({super.key});
  Icon icon = const Icon(
    Icons.grid_view_rounded,
    color: Color.fromARGB(255, 130, 132, 133),
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var height = ref.watch(BmiHeight);
    var weight = ref.watch(BmiWeight);
    var age = ref.watch(BmiAge);
    return Scaffold(
      backgroundColor: const Color(0xffeeeeee),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BuildBmiMainIcon(icon: icon),
                  Text(
                    'BMI Calculator',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: const Color.fromARGB(255, 130, 132, 133),
                    ),
                  ),
                  const BuildBmiMainIcon(
                    icon: Icon(
                      Icons.person_outline_rounded,
                      size: 28,
                      color: Color.fromARGB(255, 130, 132, 133),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 40),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff58c9e0),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 178, 185, 191),
                              blurRadius: 8.0,
                              offset: Offset(5, 5)),
                        ]),
                    width: 165,
                    height: 45,
                    child: Center(
                      child: Text(
                        'Male',
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: const Color(0xffeeeeee),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffeeeeee),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 178, 185, 191),
                              blurRadius: 8.0,
                              offset: Offset(5, 5)),
                        ]),
                    width: 165,
                    height: 45,
                    child: Center(
                      child: Text(
                        'Female',
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            color: const Color.fromARGB(255, 130, 132, 133)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23),
              child: Row(
                children: [
                  const BuildSlider(),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffeeeeee),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(255, 178, 185, 191),
                                  blurRadius: 8.0,
                                  offset: Offset(5, 5)),
                            ]),
                        width: 165,
                        height: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Weight',
                              style: GoogleFonts.poppins(
                                  color:
                                      const Color.fromARGB(255, 130, 132, 133),
                                  fontSize: 16),
                            ),
                            Text(
                              weight.toString(),
                              style: GoogleFonts.poppins(
                                  color:
                                      const Color.fromARGB(255, 130, 132, 133),
                                  fontSize: 60),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0xffeeeeee),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 178, 185, 191),
                                            blurRadius: 8.0,
                                            offset: Offset(5, 5)),
                                      ]),
                                  width: 40,
                                  height: 40,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 130, 132, 133),
                                    ),
                                    onPressed: () {
                                      ref.read(BmiWeight.notifier).state++;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0xffeeeeee),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 178, 185, 191),
                                            blurRadius: 8.0,
                                            offset: Offset(5, 5)),
                                      ]),
                                  width: 40,
                                  height: 40,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 130, 132, 133),
                                    ),
                                    onPressed: () {
                                      ref.read(BmiWeight.notifier).state--;
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xffeeeeee),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(255, 178, 185, 191),
                                  blurRadius: 8.0,
                                  offset: Offset(5, 5)),
                            ]),
                        width: 165,
                        height: 200,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Age',
                              style: GoogleFonts.poppins(
                                  color:
                                      const Color.fromARGB(255, 130, 132, 133),
                                  fontSize: 16),
                            ),
                            Text(
                              age.toString(),
                              style: GoogleFonts.poppins(
                                  color:
                                      const Color.fromARGB(255, 130, 132, 133),
                                  fontSize: 60),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0xffeeeeee),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 178, 185, 191),
                                            blurRadius: 8.0,
                                            offset: Offset(5, 5)),
                                      ]),
                                  width: 40,
                                  height: 40,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.add,
                                      color: Color.fromARGB(255, 130, 132, 133),
                                    ),
                                    onPressed: () {
                                      ref.read(BmiAge.notifier).state++;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: const Color(0xffeeeeee),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 178, 185, 191),
                                            blurRadius: 8.0,
                                            offset: Offset(5, 5)),
                                      ]),
                                  width: 40,
                                  height: 40,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Color.fromARGB(255, 130, 132, 133),
                                    ),
                                    onPressed: () {
                                      ref.read(BmiAge.notifier).state--;
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(),
                  ),
                );
                var _total = weight / ((height / 100) * (height / 100));
                String s = _total.toStringAsFixed(2);
                ref.read(BmiTotal.notifier).state = double.parse(s);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff58c9e0),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 178, 185, 191),
                          blurRadius: 8.0,
                          offset: Offset(5, 5)),
                    ]),
                width: 360,
                height: 45,
                child: Center(
                  child: Text(
                    "Let's Begin",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: const Color(0xffeeeeee),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
