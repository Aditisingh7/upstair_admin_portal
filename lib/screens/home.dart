import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Colors.grey.shade100,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, right: 10, left: 5, bottom: 10),
                child: Container(
                  height: screenHeight,
                  width: screenWidth * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16)),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 0.8,
                      )),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10.0, right: 16.0, top: 15, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Welcome Admin",
                                style: GoogleFonts.workSans(
                                    fontSize: 18, color: Colors.grey),
                              ),
                            ),
                            // Expanded(
                            //   child: Padding(
                            //     padding: EdgeInsets.only(left: 10, right: 150),
                            //     child: SizedBox(
                            //       height: screenHeight * 0.05,
                            //       width: screenWidth * 0.2,
                            //       child: TextField(
                            //         decoration: InputDecoration(
                            //           contentPadding:
                            //               EdgeInsets.symmetric(vertical: 10),
                            //           filled: true,
                            //           fillColor: Colors.grey[100],
                            //           hintText: 'Search',
                            //           focusedBorder: OutlineInputBorder(
                            //             borderRadius:
                            //                 BorderRadius.circular(10.0),
                            //             borderSide: BorderSide(
                            //                 color: Colors.deepPurple,
                            //                 width: 2.5),
                            //           ),
                            //           enabledBorder: OutlineInputBorder(
                            //             borderRadius:
                            //                 BorderRadius.circular(10.0),
                            //             borderSide: BorderSide(
                            //                 color: Colors.grey, width: 1.0),
                            //           ),
                            //           border: OutlineInputBorder(
                            //             borderRadius:
                            //                 BorderRadius.circular(10.0),
                            //           ),
                            //           prefixIcon: Icon(Icons.search),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),

                            Spacer(),
                            Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: screenWidth * 0.01,
                            ),
                            Icon(
                              Icons.person_outline_rounded,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            // padding:
                            //     EdgeInsets.only(right: 10, left: 10),
                            height: screenHeight * 0.58,
                            width: screenWidth * 0.25,
                            child: TableCalendar(
                              locale: "en_US",
                              rowHeight: 43,
                              headerStyle: HeaderStyle(
                                  formatButtonVisible: false,
                                  titleCentered: true,
                                  titleTextStyle: GoogleFonts.workSans(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                              availableGestures: AvailableGestures.all,
                              selectedDayPredicate: (day) =>
                                  isSameDay(day, today),
                              focusedDay: today,
                              firstDay: DateTime.utc(2010, 10, 16),
                              lastDay: DateTime.utc(2030, 10, 16),
                              onDaySelected: _onDaySelected,
                            ),
                          ),
                          //Spacer(),
                          Column(
                            //crossAxisAlignment: CrossAxisAlignment.,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Notification",
                                    style: GoogleFonts.workSans(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.15,
                                  ),
                                  Text(
                                    "view all",
                                    style: GoogleFonts.workSans(
                                        fontSize: 15,
                                        // fontWeight: FontWeight.w600,
                                        color: Colors.grey.shade700),
                                  ),
                                ],
                              ),
                              Container(
                                height: 150,
                                width: 450,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Colors.deepPurple.shade300,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.deepPurple
                                          .shade100, // Change color as desired
                                      blurRadius:
                                          5.0, // Adjust the blur radius for the shadow
                                      spreadRadius:
                                          4.0, // Adjust the spread radius for the shadow
                                      offset: Offset(0,
                                          3), // Adjust the offset of the shadow
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.notifications_none_rounded,
                                      size: 40,
                                    ),
                                    Text(
                                      "Have a good day",
                                      style: GoogleFonts.workSans(
                                          color: Colors.white, fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
