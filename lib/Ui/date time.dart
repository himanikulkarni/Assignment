import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class datetime extends StatefulWidget {
  const datetime({Key? key}) : super(key: key);

  @override
  _datetimeState createState() => _datetimeState();
}

class _datetimeState extends State<datetime> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Select date & time',
          style: TextStyle(
            color: Color(0xff415859),
            fontSize: 25,
          ),
        ),
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
                    Icons.calendar_month_outlined,
                    color: Colors.grey,
                    size: w / 18,
                  ),
                  hintText: 'Select a date',
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
      body: SizedBox(
        height: 500,
        child: GridView.count(
          crossAxisCount: 3,
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '9:30 AM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '11:00 AM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '12:30 PM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '2:00 PM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '3:30 PM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '5:00 PM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '6:30 PM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '8:00 PM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                child: Text(
                  '9:30 PM',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 400,
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 100,
                      child: Image.asset('assets/showbottom.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      height: 50,
                      child: Text(
                        'Enter mobile no.',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 50,
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
                            borderSide: const BorderSide(
                                color: Color(0xff415859), width: 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(w / 50),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 205, 43, 121),
                                width: 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(w / 50),
                            ),
                          ),
                          prefixText: '+91',
                          hintText: 'Enter mobile number',
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
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 205, 43, 121),
                              border: Border.all(
                                  color: Colors.transparent, width: 0.5),
                              borderRadius: BorderRadius.circular(19)),
                          child: const Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Container(
          height: 45,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 212, 71, 95),
              border: Border.all(color: Colors.transparent, width: 0.5),
              borderRadius: BorderRadius.circular(19)),
          child: const Center(
            child: Text(
              'Continue',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
