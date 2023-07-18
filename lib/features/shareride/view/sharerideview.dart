import 'package:flutter/material.dart';
import 'package:myekigai/features/shareride/widget/shareridemap.dart';
import 'package:myekigai/reusables/btn.dart';
import 'package:myekigai/features/shareride/widget/showBottomSheet.dart'as btmsheet;

class sharerideview extends StatefulWidget {
  const sharerideview({super.key});

  @override
  State<sharerideview> createState() => _sharerideviewState();
}

class _sharerideviewState extends State<sharerideview> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const shareridemap(),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child:Row(

                        children: [
                          Icon(Icons.info_outline_rounded),
                          SizedBox(width: 10,),
                          Text("Whom would you like to share your ride with?",
                          style: TextStyle(
                            fontFamily: "Sen",
                            fontSize: 14,
                            fontWeight: FontWeight.w400
                          ),)
                        ],
                      ),),
                    const SizedBox(height: 15,),
                    CustomButton(text: "Continue", onPressed: (){
                      btmsheet.showBottomSheet(context);
                    })
                  ],
                ),
              )
          ),


        ],
      ),
    );
  }
}

