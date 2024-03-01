import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login-screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/bg4.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.all(15),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffffffff),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              "Login/Signup",
                              style: GoogleFonts.rubik(
                                color: Color(0xff0ebe7e),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Hi Hand Worker",
                      style: GoogleFonts.rubik(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Find Your Doctor",
                      style: GoogleFonts.rubik(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
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
                                hintText: "Search",
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
                      height: 20,
                    ),
                    Container(
                      height: 90,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xff2753F3),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.visibility),
                                  color: Color(0xffffffff),
                                  iconSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xff0ebe7e),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.heart_broken),
                                  color: Color(0xFFFFFFFF),
                                  iconSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xffFE7F44),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove_red_eye),
                                  color: Color(0xFFFFFFFF),
                                  iconSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xffFF484C),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.hearing),
                                  color: Color(0xFFFFFFFF),
                                  iconSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 80,
                              decoration: BoxDecoration(
                                color: Color(0xFFD024E7),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove_red_eye),
                                  color: Color(0xFFFFFFFF),
                                  iconSize: 25,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Feature Doctor",
                          style: GoogleFonts.rubik(
                              fontSize: 18,
                              color: Color(0xff333333),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See All",
                          style: GoogleFonts.rubik(
                              color: Color(0xff677294),
                              fontSize: 13,
                              decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 235,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffFFFFFF)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/Rectangle-508.jpg",
                                    height: 140,
                                    width: double.infinity,
                                  ),
                                  Text("Dr.Fillerup Grab",
                                      style: GoogleFonts.rubik(
                                        color: Color(0xff333333),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text(
                                    "Medicine Specialist",
                                    style: GoogleFonts.rubik(
                                      color: Color(0xff677294),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star_half,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.grey,
                                        size: 13,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffFFFFFF)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/Rectangle-509.jpg",
                                    height: 140,
                                    width: double.infinity,
                                  ),
                                  Text("Dr.Blessing",
                                      style: GoogleFonts.rubik(
                                        color: Color(0xff333333),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text(
                                    "Dentist Specialist",
                                    style: GoogleFonts.rubik(
                                      color: Color(0xff677294),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.grey,
                                        size: 13,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xffFFFFFF)),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/Rectangle-508.jpg",
                                    height: 140,
                                    width: double.infinity,
                                  ),
                                  Text("Dr.Crick",
                                      style: GoogleFonts.rubik(
                                        color: Color(0xff333333),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      )),
                                  Text(
                                    "Heart Specialist",
                                    style: GoogleFonts.rubik(
                                      color: Color(0xff677294),
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 13,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 68,
          width: 375,
          decoration: BoxDecoration(
            color: Color(0xff0ebe7e),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home, color: Color(0xffFFFFFF)),
                iconSize: 25,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite, color: Color(0xffFFFFFF)),
                iconSize: 25,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment, color: Color(0xffFFFFFF)),
                iconSize: 25,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                icon: Icon(Icons.person, color: Color(0xffFFFFFF)),
                iconSize: 25,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
