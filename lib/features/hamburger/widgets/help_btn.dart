import 'package:flutter/material.dart';
import 'package:myekigai/theme/pallete.dart';
class Helpbtn extends StatelessWidget {
  final String btnimage;
  final String btntext;

  const Helpbtn({super.key, required this.btnimage, required this.btntext});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.430,
      height: 110,
        alignment: Alignment.center,
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(171, 171, 171, 0.25),
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 1,
          ),
          BoxShadow(
            color: Color.fromRGBO(255, 255, 255, 1),
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 0,
          ),
        ]),
        child: Expanded(child: TextButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(btnimage), fit: BoxFit.cover)),
                ),
                const SizedBox(height: 10,),
                Text(btntext,
                style:const TextStyle(
                  color: Pallete.textColor,
                  fontFamily:"Sen",
                  fontSize: 21,
                  fontWeight: FontWeight.w400
                ),)
              ],
            ))));
  }
}
