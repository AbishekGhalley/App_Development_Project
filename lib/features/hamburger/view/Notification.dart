import 'package:flutter/material.dart';
import 'package:myekigai/features/hamburger/view/content_model_notifications.dart';
import 'package:myekigai/features/hamburger/widgets/NotificationEntry.dart';
import 'package:myekigai/reusables/TopAppbar.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TopAppbar(toptitle: "Notifications"),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: info.length,
          itemBuilder: (BuildContext context,int i){
        return Column(
          children:[
            NotificationEntry(
          title: info[i].title,
          description: info[i].description,
          subDescription: info[i].subdescription,
          imagePath: info[i].imagepath,
        ),]);
      }),
    );
  }


}
