import 'package:flutter/material.dart';
import 'package:myekigai/features/auth/view/login_view.dart';
import 'content_model.dart';
import 'package:myekigai/theme/pallete.dart';

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentIndex = 0;
  PageController _controller = PageController();

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.55,
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Image.asset(contents[i].image),
                        Text(
                          contents[i].title,
                          style: const TextStyle(
                              fontSize: 27,
                              fontFamily: "Sen",
                              fontWeight: FontWeight.w700,
                              color: Pallete.textColor),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          contents[i].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 16,
                              fontFamily: "Montserrat",
                              color: Pallete.textColor,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Align(
          alignment: Alignment.bottomCenter,
          child:  Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width*0.072,
                bottom:MediaQuery.of(context).size.height*0.072 ),
                child: TextButton(
                  child: const Text("Prev",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        color: Pallete.textColor,
                        fontWeight: FontWeight.w500
                    ),),
                  onPressed: () {
                    _controller.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              ),
             Container(
               height: 60,
               margin: EdgeInsets.only(

                   bottom:MediaQuery.of(context).size.height*0.072),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),),
              Container(
                height: 60,
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width*0.072,
                    bottom:MediaQuery.of(context).size.height*0.072),
                child: TextButton(
                  child: Text(
                      currentIndex == contents.length - 1 ? "Done" : "Next",
                  style: const TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      color: Pallete.textColor,
                      fontWeight: FontWeight.w500
                  ),),
                  onPressed: () {
                    if (currentIndex == contents.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LoginView(),
                        ),
                      );
                    }
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                ),
              ),
            ],
          ),)
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? Pallete.textColor : Pallete.geryColor,
      ),
    );
  }
}
