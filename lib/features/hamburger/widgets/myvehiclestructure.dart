import 'package:flutter/material.dart';

class vehiclestructure extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagepath;
  final String? time;
  const vehiclestructure(
      {super.key,
      this.time,
      required this.title,
      required this.imagepath,
      required this.subtitle});
  @override
  Widget build(BuildContext context) {
    bool istime = false;
    if (time != null) {
      istime = true;
    }
    return Column(children:[Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3FABABAB),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 21,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFF9C9C9C),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        child: istime
                            ? Column(children: [
                                const Text(
                                  'Last visit to an eKIZone',
                                  style: TextStyle(
                                    color: Color(0xFF9C9C9C),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  time!,
                                  style: const TextStyle(
                                    color: Color(0xFF9C9C9C),
                                    fontSize: 12,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ])
                            : const Column(
                                children: [
                                  Text(
                                    'Not visited an eKIZone yet',
                                    style: TextStyle(
                                      color: Color(0xFF9C9C9C),
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  imagepath,
                  //fit: BoxFit.cover,
                  height: 156,
                  width: 169,
                ),
              ),
            ),
          ],
        ),
      ),
    ),const SizedBox(height: 20,)]);
  }
}
