import 'home-screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Finddoctors extends StatelessWidget {
  const Finddoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Find Doctors Screen",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg3.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    icon: Icon(Icons.chevron_left),
                    color: Color(0xff677294),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Find Doctors",
                    style: GoogleFonts.rubik(
                      fontSize: 18,
                      color: Color(0xff222222),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 54,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Color(0xff677294),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Dentist",
                          hintStyle: GoogleFonts.ptSans(
                            color: Color(0xff677294),
                            fontSize: 15,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.close),
                      color: Color(0xff677294),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              Expanded(
                child: ListView(
                  children: [
                    _buildDoctorContainer(
                      "Dr.Shruti Kedia",
                      "Tooths Dentist",
                      "7 Year experience",
                      "10:00 AM tomorrow",
                      "assets/Rectangle-5061.jpg",
                      context,
                    ),
                    SizedBox(height: 10),
                    _buildDoctorContainer(
                      "Dr.Watamaniuk",
                      "Tooths Dentist",
                      "9 Year experience",
                      "12:00 AM tomorrow",
                      "assets/Rectangle-5062.jpg",
                      context,
                    ),
                    SizedBox(height: 10),
                    _buildDoctorContainer(
                      "Dr.Crownover",
                      "Tooths Dentist",
                      "5 Year experience",
                      "11:00 AM tomorrow",
                      "assets/Rectangle-5064.jpg",
                      context,
                    ),
                    SizedBox(height: 10),
                    _buildDoctorContainer(
                      "Dr.Balestra",
                      "Tooths Dentist",
                      "6 Year experience",
                      "1:00 PM tomorrow",
                      "assets/Rectangle-5063.jpg",
                      context,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDoctorContainer(
    String name,
    String specialty,
    String experience,
    String availableTime,
    String imagePath,
    BuildContext context,
  ) {
    return Stack(
      children: [
        Container(
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image.asset(
                        imagePath,
                        height: 87,
                        width: 92,
                      ),
                    ),
                    SizedBox(width: 18),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.rubik(
                            fontSize: 18,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          specialty,
                          style: GoogleFonts.ptSans(
                            color: Color(0xff0ebe7f),
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          experience,
                          style: GoogleFonts.rubik(
                            color: Color(0xff677294),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Next available",
                  style: GoogleFonts.rubik(
                    fontSize: 13,
                    color: Color(0xff0ebe7f),
                  ),
                ),
                Text(
                  availableTime,
                  style: GoogleFonts.rubik(
                    fontSize: 12,
                    color: Color(0xff677294),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff0ebe7f),
              fixedSize: Size(112, 37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Book Now",
              style: GoogleFonts.rubik(
                color: Color(0xffffffff),
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
