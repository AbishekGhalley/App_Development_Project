import 'package:flutter/material.dart';
class Charging extends StatefulWidget {
  const Charging({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Charging> createState() => _ChargingState();
}

const PERCENTAGE = 60;
const PER_VAL = PERCENTAGE / 100;


const TWO_PI = 3.14 * 2 * PER_VAL;

class _ChargingState extends State<Charging> {
  bool _isExpanded = false;
  final size = 200.0;
  double _currentProgress = 1; // Updated progress value
  final Duration _animationDuration = Duration(seconds: (10 * PER_VAL).toInt()); // Decreased animation duration for smooth transition

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
                    'https://www.google.com/maps/d/thumbnail?mid=1rQQ1fphljUW4dQvPCGxo6EU_vO4&hl=en',
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
                  height: _isExpanded
                      ? MediaQuery.of(context).size.height * 0.65
                      : 100,
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
                                decoration: const BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.all(
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
                                padding:
                                const EdgeInsets.symmetric(vertical: 20),
                                child: const Text(
                                  "Plugged In",
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              TweenAnimationBuilder(
                                tween:
                                Tween(begin: 0.0, end: _currentProgress),
                                duration: _animationDuration,
                                builder: (context, value, child) {
                                  int percentage = (value * PERCENTAGE).ceil();
                                  return Container(
                                    width: size,
                                    height: size,
                                    child: Stack(
                                      children: [
                                        ShaderMask(
                                          shaderCallback: (rect) {
                                            return SweepGradient(
                                              startAngle: 0.0,
                                              endAngle:
                                              TWO_PI * _currentProgress, // Updated progress value
                                              stops: [value, value],
                                              center: Alignment.center,
                                              colors: [
                                                Colors.indigoAccent.shade400,
                                                Colors.white,
                                              ],
                                            ).createShader(rect);
                                          },
                                          child: Container(
                                            width: size,
                                            height: size,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Center(
                                          child: Container(
                                            width: size - 40,
                                            height: size - 40,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Container(
                                                width: size - 60,
                                                height: size - 60,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                  Colors.indigo[900],
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 5,
                                                      color: Colors.black,
                                                      spreadRadius: 2,
                                                    )
                                                  ],
                                                ),
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                    top:
                                                    30.0,
                                                  ),
                                                  child:
                                                  Column(
                                                    children:
                                                    [
                                                      Text(
                                                        "$percentage%",
                                                        style:
                                                        TextStyle(
                                                          fontSize:
                                                          30,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          color:
                                                          Colors.white,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .only(
                                                            right:
                                                            20),
                                                        child:
                                                        IconButton(
                                                          icon:
                                                          const Icon(
                                                            Icons.bolt,
                                                            color:
                                                            Colors.white,
                                                            size:
                                                            40,
                                                          ),
                                                          onPressed:
                                                              () {
                                                            _resetProgress();
                                                            _startLoading();
                                                          },
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    Text(
                                      "Elapsed Time",
                                      style:
                                      TextStyle(
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    Text(
                                      "25 min",
                                      style:
                                      TextStyle(
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    Text(
                                      "Remaining Time",
                                      style:
                                      TextStyle(
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    Text(
                                      "45 min",
                                      style:
                                      TextStyle(
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    Text(
                                      "Energy",
                                      style:
                                      TextStyle(
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    Text(
                                      "38.0Kwh",
                                      style:
                                      TextStyle(
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    Text(
                                      "Price",
                                      style:
                                      TextStyle(
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                    child:
                                    Text(
                                      "\₹ 100",
                                      style:
                                      TextStyle(
                                        fontSize:
                                        14,
                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              ElevatedButton(
                                onPressed:
                                    () {
                                  // Handle "Finish and Pay" button click
                                },
                                  child:
                                  Text(
                "Finish and Pay", style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  padding: const EdgeInsets.all(15),
                                  minimumSize: Size(MediaQuery.of(context).size.width, 0),
                                ),
                              ),
                              const SizedBox(height: 16),
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
