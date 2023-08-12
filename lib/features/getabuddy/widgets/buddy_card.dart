import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/pallete.dart';

class BuddyCard extends StatefulWidget {
  final String image;
  final String drivername;
  final String brand;
  final String minuite;
  final VoidCallback? onPressed;
  const BuddyCard(
      {super.key,
      required this.image,
      required this.drivername,
      required this.brand,
      required this.minuite,
      this.onPressed});

  @override
  State<BuddyCard> createState() => _BuddyCardState();
}

class _BuddyCardState extends State<BuddyCard> {
  bool _isTapped = false;
  Color _borderColor = Pallete.partitionlineColor;
  Color _previousColor = Pallete.partitionlineColor;

  void _onCardTap() {
    if (widget.onPressed != null) {
      widget.onPressed!();
    }
    setState(() {
      if (_isTapped) {
        _borderColor =
            _previousColor; // Revert to the previous color when tapped again
      } else {
        _previousColor =
            _borderColor; // Store the current color before changing it
        _borderColor =
            Pallete.primaryColor; // Change the border color to blue when tapped
      }
      _isTapped = !_isTapped; // Toggle the tapped state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: GestureDetector(
        onTap: _onCardTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: _borderColor),
              bottom: BorderSide(width: 1.0, color: _borderColor),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(8),
                bottom: ScreenUtil().setHeight(8),
                left: ScreenUtil().setWidth(20)),
            //
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.drivername,
                            style: GoogleFonts.sen(
                                fontSize: ScreenUtil().setSp(21),
                                color: Pallete.textColor,
                                fontWeight: FontWeight.w400)),
                        Text(widget.brand,
                            style: GoogleFonts.montserrat(
                                fontSize: ScreenUtil().setSp(16),
                                color: Pallete.geryColor,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 20,
                    ),
                    Spacer(),
                    //
                    Container(
                      padding: EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage(widget.image),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(10),
                          ),
                          Column(
                            children: [
                              Text(widget.minuite,
                                  style: GoogleFonts.sen(
                                      fontSize: ScreenUtil().setSp(16),
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w400)),
                              Text(
                                'min',
                                style: GoogleFonts.montserrat(
                                    fontSize: ScreenUtil().setSp(12),
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
