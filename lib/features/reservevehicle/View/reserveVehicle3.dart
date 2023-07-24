import 'package:flutter/material.dart';
import 'package:myekigai/constants/assets_constants.dart';

class choose_vehicles extends StatelessWidget {
  const choose_vehicles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text('Choose Vehicles',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Montserrat',
            )),
      ),
      body: Container(
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                  child: const ListTile(
                title: Text(
                  'Reserve any vehicle for an hour at minimal charges to ensure availability.',
                  style: TextStyle(
                    color: Color(0xFF9C9C9C),
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListTile(
                  leading: Container(
                    width: 62,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsConstants.imlocatorPin)),
                    ),
                  ),
                  title: const Text(
                    'Voltix',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Solaire',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.1',
                            style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Reserve for',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20/hr',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListTile(
                  leading: Container(
                    width: 62,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsConstants.reserveVehicle)),
                    ),
                  ),
                  title: const Text(
                    'bLizz',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tesla',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.4',
                            style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Reserve for',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20/hr',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListTile(
                  leading: Container(
                    width: 62,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsConstants.imavlYellow)),
                    ),
                  ),
                  title: const Text(
                    'Srix-4',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ather',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.0',
                            style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Reserve for',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20/hr',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListTile(
                  leading: Container(
                    width: 62,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsConstants.imgreenAvl)),
                    ),
                  ),
                  title: const Text(
                    'Unzart-3',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MYeKIGAI',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.8',
                            style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Reserve for',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20/hr',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListTile(
                  leading: Container(
                    width: 62,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsConstants.imyellowAvl)),
                    ),
                  ),
                  title: const Text(
                    'Helix',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tesla',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '3.9',
                            style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Reserve for',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20/hr',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListTile(
                  leading: Container(
                    width: 62,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsConstants.imredAvl)),
                    ),
                  ),
                  title: const Text(
                    'EVG-75',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Anther',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.2',
                            style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Reserve for',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20/hr',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListTile(
                  leading: Container(
                    width: 62,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsConstants.imredAvl)),
                    ),
                  ),
                  title: const Text(
                    'Unzart-7',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MYeKIGAI',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.6',
                            style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Reserve for',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20/hr',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: ListTile(
                  leading: Container(
                    width: 62,
                    height: 100,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AssetsConstants.imredAvl)),
                    ),
                  ),
                  title: const Text(
                    'Walters-950',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 21,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gogoro',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.3',
                            style: TextStyle(
                              color: Color(0xFF9C9C9C),
                              fontSize: 16,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Reserve for',
                        style: TextStyle(
                          color: Color(0xFF9C9C9C),
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '20/hr',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 2,
              color: Color(0xFFD9D9D9),
            ),
          ],
        ),
      ),
    );
  }
}
