import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/theme.dart';
import 'dart:async';

class TimerBox extends StatefulWidget {
  final String min;
  final String sec;
  const TimerBox({super.key, required this.min, required this.sec});

  @override
  _TimerBoxState createState() => _TimerBoxState();
}

class _TimerBoxState extends State<TimerBox> {
  late int minutes;
  late int seconds;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    // Convert the passed props (min and sec) to integers for the timer
    minutes = int.parse(widget.min);
    seconds = int.parse(widget.sec);
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds == 0) {
          if (minutes == 0) {
            timer.cancel(); //timer finished logic
            return;
          }
          minutes--;
          seconds = 59;
        } else {
          seconds--;
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(171, 171, 171, 0.25),
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 1,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Row(
              children: [
                Text(
                  minutes.toString().padLeft(2, '0'),
                  style: GoogleFonts.sen(fontSize: 16),
                ),
                Text(' min')
              ],
            ),
          ),
          Center(
            child: Container(
              height: 26,
              width: 1,
              color: Pallete.partitionlineColor,
            ),
          ),
          Center(
            child: Row(
              children: [
                Text(
                  seconds.toString().padLeft(2, '0'),
                  style: GoogleFonts.sen(fontSize: 16),
                ),
                Text(' sec')
              ],
            ),
          )
        ],
      ),
    );
  }
}
