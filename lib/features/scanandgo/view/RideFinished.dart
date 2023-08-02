import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/constants/constants.dart';
import 'package:myekigai/theme/pallete.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RideFinished extends StatelessWidget {
  const RideFinished({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Image.asset(
                // Map must be added here
                GlobalAssets.imMap,
                width: double.infinity,
                height: 800,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 8,
                left: 20,
                child: Container(
                  decoration: ShapeDecoration(
                    color: const Color(0xFF363636),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu_rounded,
                        size: 32,
                        color: Colors.white,
                      )),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right: 16, bottom: screenHight * 0.032),
                      child: Column(
                        children: [
                          IconButton(
                            icon: Image.asset(GlobalAssets.locate),
                            onPressed: () {
                              // Handle favorite icon press
                            },
                          ),
                          SvgPicture.asset(
                            GlobalAssets
                                .imekizone, // Replace with your SVG asset path
                            height: 36, // Set the height of the SVG
                            width: 36, // Set the width of the SVG
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                        ],
                      ),
                    ),
                    // BottomSheet(onClosing: onClosing, builder: builder),
                    SlidingUpPanel(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 3.0,
                            spreadRadius: 2.0,
                            offset: const Offset(
                                0, 2), // Defines the position of the shadow
                          ),
                        ],
                        minHeight: MediaQuery.of(context).size.height * 0.3345,
                        maxHeight: screenHight * 0.65,
                        panel: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      top: screenHight * 0.012,
                                    ),
                                    height: screenHight * 0.0035,
                                    width: 66,
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(3)),
                                      color: Pallete.textColor,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Your trip is finished!',
                                    style: GoogleFonts.sen(
                                      color: Pallete.textColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Text(
                                    'Trip fare',
                                    style: GoogleFonts.sen(
                                      color: Pallete.geryColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Voltix',
                                            style: GoogleFonts.sen(
                                              color: Pallete.textColor,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            'Solaire',
                                            style: GoogleFonts.sen(
                                              color: Pallete.geryColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        '₹20/hr',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    height: 1,
                                    color: Pallete.partitionlineColor,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Travel time cost',
                                            style: GoogleFonts.montserrat(
                                              color: Pallete.textColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            '(74 min)',
                                            style: GoogleFonts.montserrat(
                                              color: Pallete.geryColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        '₹57.80',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Waiting time cost',
                                            style: GoogleFonts.montserrat(
                                              color: Pallete.textColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            '(4 min)',
                                            style: GoogleFonts.montserrat(
                                              color: Pallete.geryColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                            ),
                                          )
                                        ],
                                      ),
                                      Text(
                                        '₹5.45',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Taxes',
                                        style: GoogleFonts.montserrat(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '₹15.50',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Container(
                                    height: 1,
                                    color: Pallete.partitionlineColor,
                                  ),
                                ),
                                const Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Total',
                                        style: GoogleFonts.montserrat(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        '₹78.75',
                                        style: GoogleFonts.sen(
                                          color: Pallete.textColor,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                const Spacer(),

                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'The amount has been deducted from your eKI- Wallet.',
                                          style: GoogleFonts.sen(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                          maxLines: 2,
                                          softWrap: true,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.popUntil(context,
                                              (route) => route.isFirst);
                                        },
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 3, color: Colors.grey),
                                          ),
                                          child: const Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 20,
                                              color: Colors.grey),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Container(
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: [
                                //       Column(
                                //         children: [
                                //           Text(
                                //             'The amount has been deducted from your eKI-Wallet.',
                                //             style: GoogleFonts.sen(
                                //               color: Pallete.textColor,
                                //               fontWeight: FontWeight.w400,
                                //               fontSize: 18,
                                //             ),
                                //             minLines: 2,
                                //             overflow: TextOverflow.ellipsis,
                                //           ),
                                //         ],
                                //       ),
                                //       Container(
                                //         width: 30,
                                //         height: 30,
                                //         decoration: BoxDecoration(
                                //           shape: BoxShape.circle,
                                //           border: Border.all(
                                //               width: 3, color: Colors.grey),
                                //         ),
                                //         child: Icon(
                                //             Icons.arrow_forward_ios_rounded,
                                //             size: 20,
                                //             color: Colors.grey),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                const Spacer(),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
