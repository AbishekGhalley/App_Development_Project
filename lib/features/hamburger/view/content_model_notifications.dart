import 'package:myekigai/constants/constants.dart';

class notifs {
  String title;
  String description;
  String imagepath;
  String? subdescription;
  notifs(
      {required this.title,
      required this.description,
      required this.imagepath,
      this.subdescription});
}

List<notifs> info = [
  notifs(
      title: "Want to split the bill?",
      description:
          "MYeKIGAI does it for you. Click Split the bill when your ride is over",
      imagepath: HamAssets.notifpic),
  notifs(
      title: 'Account Alert',
      subdescription: 'Add payment info to finish setting up your account',
      description: "Let's set up your account",
      imagepath: HamAssets.wallet),
  notifs(
      title: "Want to split the bill?",
      description:
          "MYeKIGAI does it for you. Click Split the bill when your ride is over",
      imagepath: HamAssets.notifpic),
  notifs(
      title: 'Account Alert',
      subdescription: 'Add payment info to finish setting up your account',
      description: "Let's set up your account",
      imagepath: HamAssets.wallet),
];
