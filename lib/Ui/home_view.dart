import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interview_demo_app/Ui/date%20time.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Image.asset(
                "assets/Ellipse 4.png",
                height: 15,
                width: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Sector-44, Real Estate, Sector- 62, Gurugram",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff415859),
                ),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Color(0xff415859),
                size: 25,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SizedBox(
                width: w * 0.95,
                height: h * 0.05,
                child: TextField(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: w / 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(bottom: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xff415859), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(w / 50),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Color(0xff415859), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(w / 50),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: w / 18,
                    ),
                    hintText: 'Search for a service',
                    hintStyle: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: w / 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 110,
                    width: 200,
                    child: Image.asset('assets/5.png'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 110,
                    width: 110,
                    child: Image.asset('assets/1.png'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                child: GridView.count(
                  crossAxisCount: 4,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const datetime()));
                      },
                      child: Image.asset('assets/services/salon.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/electrician.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/plumber.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/cctv.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/ac service.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/packers.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/cleaning.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/house painting.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/home appliances.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/disinfection.jpg'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/pest control.png'),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/services/carpenter.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 150,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    Container(
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/masked man.jpg'),
                      ),
                    ),
                    Container(
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/hand wash.png'),
                      ),
                    ),
                    Container(
                      child: const CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage('assets/arogya setu.png'),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
