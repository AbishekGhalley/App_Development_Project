import 'package:flutter/material.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/theme/pallete.dart';

void showBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white
        ),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child:Text("Ready to share?",
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Sen',
                    fontWeight: FontWeight.w400
                ),),),
            const SizedBox(height: 30,),
            CustomButton(text: "Confirm", onPressed: (){}),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              child: TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child:const Text("No,return",
                  style: TextStyle(
                    fontFamily: "Sen",
                    fontSize: 16,
                    color: Pallete.primaryColor,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    decorationColor: Pallete.primaryColor,
                    decorationThickness: 1.0,
                  ),),
              ),
            )

          ],
        ),
      );
    },
  );
}
