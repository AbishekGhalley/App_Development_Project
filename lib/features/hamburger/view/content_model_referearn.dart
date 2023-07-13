import 'package:myekigai/constants/assets_constants.dart';

class Deployment {
  String text;
  String smalltext;
  String image;
  Deployment({required this.text, required this.smalltext, required this.image});
}

List<Deployment> questions = [
  Deployment(
      text: "Your Friend joins using"
          "\n your refer link",
      smalltext: "Your Friend earns ₹40",
  image: AssetsConstants.refersplash1),
  Deployment(
      text: "Your Friend uses the "
          "\n first service",
      smalltext: "Your Friend earns ₹30",
  image: AssetsConstants.refersplash2),
];
class Faq{
  String question;

  Faq({required this.question});
}
List <Faq> askedquestions=[
  Faq(
   question: "Is there a limit to the number"
       "\nof people I can refer and earn?"
  ),
  Faq(
    question: "Can I refer someone who is"
        "\nalready a user of MYeKIGAI?"
  )
] ;

