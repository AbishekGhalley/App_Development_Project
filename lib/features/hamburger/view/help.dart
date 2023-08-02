import 'package:flutter/material.dart';
import 'package:myekigai/features/hamburger/view/content_model_help.dart';
import 'package:myekigai/features/hamburger/widgets/help_btn.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/theme/theme.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppbar(toptitle: "Help"),
      body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 25),
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    height: 70,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 17, horizontal: 12),
                      child: Row(
                        children: [
                          Image.asset(HamAssets.bubblechat),
                          const SizedBox(
                            width: 16,
                          ),
                          const Text("Having a problem?",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Sen")),
                          const Spacer(),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text("Help",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Sen")))
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Helpbtn(
                        btnimage: HamAssets.cashlesspayment,
                        btntext: "Payment"),
                    Spacer(),
                    Helpbtn(btnimage: HamAssets.share, btntext: "Services")
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Helpbtn(btnimage: HamAssets.error, btntext: "Technical"),
                    Spacer(),
                    Helpbtn(btnimage: HamAssets.private, btntext: "Privacy")
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'General Faqs',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Sen"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: faqs.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(children: [
                            ListTile(
                                contentPadding: EdgeInsets.zero,
                                title: Text(
                                  faqs[index].questions,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Montserrat"),
                                ),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                        Icons.keyboard_arrow_down_sharp))),
                            SizedBox(
                              height: 15,
                            ),
                            Divider(
                              height: 1,
                              thickness: 1,
                              color: Pallete.partitionlineColor,
                            ),
                            SizedBox(
                              height: 15,
                            )
                          ]);
                        })
                  ],
                )
              ],
            ),
          )),
    );
  }
}
