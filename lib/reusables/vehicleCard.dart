import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myekigai/theme/pallete.dart';

class VehicleCard extends StatefulWidget {
  final String image;
  final String name;
  final String brand;
  final String stars;
  final String hours;
  final VoidCallback? onPressed;
  const VehicleCard(
      {super.key,
      required this.image,
      required this.name,
      required this.brand,
      required this.stars,
      required this.hours,
      this.onPressed});

  @override
  State<VehicleCard> createState() => _VehicleCardState();
}

class _VehicleCardState extends State<VehicleCard> {
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
      padding: const EdgeInsets.symmetric(vertical: 7),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(widget.image),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(10),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.name,
                            style: GoogleFonts.sen(
                                fontSize:ScreenUtil().setSp(21),
                                color: Pallete.textColor,
                                fontWeight: FontWeight.w400)),
                        Text(widget.brand,
                            style: GoogleFonts.montserrat(
                                fontSize: ScreenUtil().setSp(16),
                                color: Pallete.geryColor,
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            Text(widget.stars,
                                style: GoogleFonts.montserrat(
                                    fontSize: ScreenUtil().setSp(12),
                                    color: Pallete.geryColor,
                                    fontWeight: FontWeight.w500)),
                            Text(
                              ' ⭐',
                              style: GoogleFonts.montserrat(fontSize:ScreenUtil().setSp(12)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.only(right: ScreenUtil().setWidth(20)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Reserved for',
                              style: GoogleFonts.montserrat(
                                  fontSize: ScreenUtil().setSp(12),
                                  color: Pallete.geryColor,
                                  fontWeight: FontWeight.w500)),
                          Text(widget.hours,
                              style: GoogleFonts.sen(
                                  fontSize: ScreenUtil().setSp(16),
                                  color: Pallete.textColor,
                                  fontWeight: FontWeight.w400))
                        ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
