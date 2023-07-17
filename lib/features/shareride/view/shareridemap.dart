import 'package:flutter/material.dart';
import 'package:myekigai/constants/assets_constants.dart';
import 'package:myekigai/reusables/btn.dart';

class shareridemap extends StatefulWidget {
  const shareridemap({super.key});

  @override
  State<shareridemap> createState() => _shareridemapState();
}

class _shareridemapState extends State<shareridemap> {
  String searchQuery = '';
  List<String> originalResults = [
    'Result 1',
    'Result 2',
    'Result 3',
    'Result 4',
    'Result 5',
  ];
  List<String> filteredResults = [];

  @override
  void initState() {
    super.initState();
    filteredResults = originalResults;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              AssetsConstants.map,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 15,
            left: 20,
            right: 20,
            child: Container(
              height: 40,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                shadows: const [
                  BoxShadow(
                    color: Color(0x3FABABAB),
                    blurRadius: 4,
                    offset: Offset(1, 1),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x3FABABAB),
                    blurRadius: 4,
                    offset: Offset(-1, -1),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: GestureDetector(
                onTap: () {
                  // Handle search bar tap
                },
                child: Row(
                  children: [
                    IconButton(
                      padding: const EdgeInsets.only(bottom: 1),
                      icon: const Icon(Icons.menu_rounded, size: 32),
                      onPressed: () {
                        // Handle hamburger menu button press
                      },
                    ),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: 'Stations & Destinations',
                          hintStyle: TextStyle(
                            color: Color(0xFF9C9C9C),
                            fontSize: 16,
                            fontFamily: 'Sen',
                            fontWeight: FontWeight.w400,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            bottom: 10,
                            left: 4,
                            right: 4,
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            searchQuery = value;
                            filteredResults = originalResults
                                .where((item) => item
                                .toLowerCase()
                                .contains(searchQuery.toLowerCase()))
                                .toList();
                          });
                        },
                      ),
                    ),
                    IconButton(
                      padding: const EdgeInsets.only(bottom: 1),
                      icon: const Icon(
                        Icons.mic_rounded,
                        size: 24,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        // Handle microphone button press by backend
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 180,
            right: 16,
            child: Column(
              children: [
                IconButton(
                  icon: Image.asset(AssetsConstants.location),
                  onPressed: () {
                    // Handle favorite icon press
                  },
                ),
                IconButton(
                  icon: Image.asset(AssetsConstants.ekizone),
                  onPressed: () {
                    // Handle share icon press
                  },
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child:Row(
                    children: [
                      Icon(Icons.info_outline_rounded),
                      Spacer(),
                      Text("Whom would you like to share your ride with?")
                    ],
                  ),),
                const SizedBox(height: 15,),
                CustomButton(text: "Continue", onPressed: (){})
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}
