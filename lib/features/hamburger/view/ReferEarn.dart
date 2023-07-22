import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:myekigai/features/hamburger/view/content_model_referearn.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/theme/pallete.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TopAppbar(toptitle: "Refer & Earn"),
        body: SizedBox(
            height: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(AssetsConstants.giftcard),
                            const Text("Invite Friends to MYeKIGAI",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Sen")),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Invite",
                                    style: TextStyle(
                                        color: Pallete.primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Sen")))
                          ],
                        ),
                      )),
                  SizedBox(
                      width: double.infinity,
                      height: 240,
                      child: Container(
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
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "How it works?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "Montserrat"),
                                  ),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "T&Cs",
                                        style: TextStyle(
                                            color: Pallete.primaryColor,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Montserrat"),
                                      ))
                                ],
                              ),
                              const Divider(
                                color: Pallete.partitionlineColor,
                                height: 1,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Expanded(
                                  child: ListView.builder(
                                itemCount: questions.length,
                                itemBuilder: (BuildContext context, int index) {
                                  int x = index + 1;
                                  return Column(children: [
                                    Row(children: [
                                      DottedBorder(
                                        color: Pallete.primaryColor,
                                        strokeWidth: 1,
                                        child: Container(
                                            alignment: Alignment.center,
                                            width: 37,
                                            height: 37,
                                            child: Text(
                                              "$x",
                                              style: const TextStyle(
                                                  fontSize: 27,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: "Sen"),
                                            )),
                                      ),
                                      const SizedBox(
                                        width: 22,
                                      ),
                                      SizedBox(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                questions[index].text,
                                                style: const TextStyle(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: "Montserrat"),
                                              ),
                                              Text(
                                                questions[index].smalltext,
                                                style: const TextStyle(
                                                    color: Pallete.geryColor,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: "Montserrat"),
                                              )
                                            ]),
                                      ),
                                      const Spacer(),
                                      Container(
                                        width: 68,
                                        height: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    questions[index].image),
                                                fit: BoxFit.cover)),
                                      ),
                                    ]),
                                    const SizedBox(
                                      height: 20,
                                    )
                                  ]);
                                },
                              )),
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                      child: ListView.builder(
                    itemCount: askedquestions.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
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
                                horizontal: 12, vertical: 8),
                            child: Row(children: [
                              Image.asset(AssetsConstants.faq),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                askedquestions[index].question,
                                style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat"),
                              ),
                              const Spacer(),
                              IconButton(
                                icon:
                                    const Icon(Icons.keyboard_arrow_down_sharp),
                                onPressed: () {},
                              ),
                            ])),
                      );
                    },
                  ))
                ],
              ),
            )));
  }
}
