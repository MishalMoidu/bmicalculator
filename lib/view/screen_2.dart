import 'package:calculator/controller/bmi_controller.dart';
import 'package:calculator/view/screen_bmi_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

// ignore: must_be_immutable
class Screen2 extends ConsumerWidget {
  Screen2({super.key});
  Widget icon = const Icon(
    Icons.grid_view_rounded,
    color: Color.fromARGB(255, 130, 132, 133),
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var total = ref.watch(BmiTotal);
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BuildBmiMainIcon(
                      icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color.fromARGB(255, 130, 132, 133),
                  )),
                  Text(
                    'BMI Results',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Color.fromARGB(255, 130, 132, 133),
                    ),
                  ),
                  BuildBmiMainIcon(
                    icon: Icon(
                      Icons.person_outline_rounded,
                      size: 28,
                      color: Color.fromARGB(255, 130, 132, 133),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              padding: EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xffeeeeee),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 178, 185, 191),
                        blurRadius: 15.0,
                        offset: Offset(15, 15)),
                  ]),
              // width: 180,
              // height: 180,
              child: CircularPercentIndicator(
                percent: bmi(total / 40),
                progressColor: total > 25
                    ? Colors.red
                    : total > 18.5
                        ? Color(0xff58c9e0)
                        : Colors.green,
                radius: 78.0,
                animation: true,
                animationDuration: 2000,
                lineWidth: 13.0,
                backgroundWidth: -2,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Color.fromARGB(255, 160, 165, 166),
                center: Text(
                  total.toString(),
                  style: GoogleFonts.signikaNegative(
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 130, 132, 133)),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            RichText(
              text: TextSpan(
                text: 'You have',
                style: GoogleFonts.poppins(
                    color: Color.fromARGB(255, 130, 132, 133), fontSize: 16),
                children: [
                  TextSpan(
                    text: total > 25
                        ? ' Over Weight '
                        : total > 18.5
                            ? ' Normal '
                            : ' Under Weight ',
                    style: GoogleFonts.poppins(
                        color: total > 25
                            ? Colors.red
                            : total > 18.5
                                ? Color(0xff58c9e0)
                                : Colors.green,
                        fontWeight: FontWeight.w600),
                  ),
                  TextSpan(text: 'body weight!', style: GoogleFonts.poppins()),
                ],
              ),
            ),
            SizedBox(
              height: 220,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffeeeeee),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 178, 185, 191),
                            blurRadius: 8.0,
                            offset: Offset(5, 5)),
                      ]),
                  width: 150,
                  height: 40,
                  child: Center(
                    child: Text(
                      'Details',
                      style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 130, 132, 133),
                          fontWeight: FontWeight.w600),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

double bmi(double value) {
  if (value <= 1) {
    return value;
  } else {
    return 1;
  }
}
