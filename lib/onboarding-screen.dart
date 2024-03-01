import 'home-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'find-doctors-screen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Onboarding Screen",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bg2.jpg"), fit: BoxFit.fill)),
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Image.asset("assets/Ellipse-154.jpg", height: 336, width: 336),
              SizedBox(
                height: 30,
              ),
              Text(
                "Find Trusted Doctors",
                style: GoogleFonts.rubik(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff333333),
                    fontSize: 28),
              ),
              SizedBox(height: 15),
              Container(
                width: 274,
                height: 70,
                child: Text(
                  "Contrary to popular belief,Lorem ipsum is not random text.It has roots in a piece of it over 2000 years old",
                  style: GoogleFonts.rubik(
                    color: Color(0xff677294),
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 50,
                width: 295,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xff0ebe7f),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Finddoctors()),
                    );
                  },
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  "Skip",
                  style: GoogleFonts.rubik(
                    fontSize: 14,
                    color: Color(0xff677294),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
