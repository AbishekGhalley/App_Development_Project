import 'package:flutter/material.dart';

const String imageUrl =
    'https://www.google.com/maps/d/thumbnail?mid=1rQQ1fphljUW4dQvPCGxo6EU_vO4&hl=en';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isExpanded = false;
  final size = 200.0;
  double _currentProgress = 1; // Updated progress value
  final Duration _animationDuration = Duration(seconds: 10); // Decreased animation duration for smooth transition

  void _resetProgress() {
    setState(() {
      _currentProgress = 0.0;
    });
  }

  void _startLoading() {
    setState(() {
      _currentProgress = 1.0;
    });
  }

  Widget _buildPaddingRow({required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF1C1C1C),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Color(0xFF1C1C1C),
              fontSize: 16,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        backgroundColor: Colors.transparent,
        elevation: 0, // Remove the shadow below the app bar
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: _isExpanded ? 2 : 3,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Container(
                  height: _isExpanded ? MediaQuery.of(context).size.height * 0.65 : 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 5),
                            Container(
                              alignment: Alignment.center,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                        Center(
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: const Text(
                                  'Charging',
                                  style: TextStyle(
                                    color: Color(0xFF1C1C1C),
                                    fontSize: 36,
                                    fontFamily: 'Sen',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                padding: const EdgeInsets.only(left: 36.0, right: 36.0, top: 10.0, bottom: 10.0),
                                child: Column(
                                  children: [
                                    _buildPaddingRow(title: 'Current Charge', value: '74%'),
                                    const SizedBox(height: 15),
                                    _buildPaddingRow(title: 'Energy', value: '40 kWh'),
                                    const SizedBox(height: 15),
                                    _buildPaddingRow(title: 'Amount Paid', value: '₹ 850'),
                                    const SizedBox(height: 15),
                                    _buildPaddingRow(title: 'Estimated Range', value: '400 km'),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: const Text(
                                  'Rate your Charging Experience',
                                  style: TextStyle(
                                    color: Color(0xFF1C1C1C),
                                    fontSize: 21,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                                width: 300,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset('Assets/Images/thumbs_up.png'),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset('Assets/Images/thumbs_down.png'),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
