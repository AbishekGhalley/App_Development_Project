import 'package:myekigai/constants/constants.dart';

class myvehicle {
  final String title;
  final String subtitle;
  final String? time;
  final String imagepath;
  myvehicle(
      {required this.title,
      required this.subtitle,
      this.time,
      required this.imagepath});
}

List<myvehicle> vehicle = [
  myvehicle(
      title: "Ola",
      subtitle: "S1 Pro",
      imagepath: HamAssets.ev1,
      time: "06:21 pm, 1st July 2023"),
  myvehicle(title: "Ather", subtitle: "450X", imagepath: HamAssets.ev1)
];
