import 'package:myekigai/constants/constants.dart';

class Deployment {
  String image;
  String title;
  String description;
  Deployment(
      {required this.image, required this.title, required this.description});
}

List<Deployment> contents = [
  Deployment(
      title: 'Scan & Go',
      image: AssetsConstants.scango,
      description: "Easy and accessible rentals at your fingertips."
          "\nJust Scan the QR on vehicle and you are ready to hit the road !"),
  Deployment(
      title: 'Reserve Vehicle',
      image: AssetsConstants.reserveVehicle,
      description: "Availability of your desired vehicle?"
          "Reserve your desired EV for an hour."),
  Deployment(
      title: "Swap Battery",
      image: AssetsConstants.swapbattery,
      description: "Say goodbye to range anxiety with"
          " quick and hassle-free battery swaps."),
  Deployment(
      title: "Super Charge",
      image: AssetsConstants.supercharge,
      description: "We take charging seriously !"
          "Enjoy a reliable network of charging stations."),
  Deployment(
      title: "Get A Buddy",
      image: AssetsConstants.buddy,
      description: "No license?We got you covered. "
          "Get a Buddy to pick and drop you to your desired location."),
  Deployment(
      title: "Share Ride",
      image: AssetsConstants.shareRide,
      description:
          " Share your ride with a fellow traveler heading in the same direction,"
          " save energy, and split costs. Lets Drive Together !"),
];
