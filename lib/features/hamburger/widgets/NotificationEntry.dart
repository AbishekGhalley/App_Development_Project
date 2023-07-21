import 'package:flutter/material.dart';

class NotificationEntry extends StatelessWidget {
  final String title;
  final String description;
  final String? subDescription;
  final String imagePath;
  const NotificationEntry({Key? key,required this.imagePath,this.subDescription, required this.description,required this.title}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
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
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 16,
                        fontFamily: 'Sen',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 4,),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Color(0xFF9C9C9C),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (subDescription != null) const SizedBox(height: 4,),
                    if (subDescription != null) Text(
                      subDescription!,
                      style: const TextStyle(
                        color: Color(0xFF9C9C9C),
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  imagePath,
                  height: 133,
                  width: 133,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
