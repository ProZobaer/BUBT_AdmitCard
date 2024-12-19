import 'package:flutter/material.dart';

class AssReportCoverPage extends StatelessWidget {
  const AssReportCoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        height: 1123,
        width: 749,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 1),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Container(height: 20),
                    // University Name ------------------------------
                    const Text(
                      'Bangladesh University of Business & Technology',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Container(height: 20),

                    // University Logo ------------------------------
                    const Image(
                      height: 180,
                      image: AssetImage('images/logo.png'),
                    ),
                    const SizedBox(height: 25),
                    // Assignment or Report Name --------------------
                    Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          'ASSIGNMENT',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(height: 60),

                    // Assignment Information -----------------------
                    const AssignmentInfo(),
                    Container(height: 70),
                    // Submit Information -----------------------
                    const SubmitByTo(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Assignment info-------------------------------------------------------
class AssignmentInfo extends StatelessWidget {
  const AssignmentInfo({super.key});

  // Define a reusable TextStyle
  static const TextStyle headerStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w900,
    color: Colors.black,
    letterSpacing: 0.5,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 60, right: 60),
        child: Column(
          children: [
            //Course Title ---------------------------------------------------
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Ensure top alignment
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  child: const Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Ensure top alignment
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Course Title',
                        style: headerStyle,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Ensure top alignment
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' : ',
                      style: headerStyle,
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Ensure top alignment
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Microprocessor and Controller ', style: headerStyle,
                        overflow: TextOverflow
                            .visible, // Handles overflow and adds '...'
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            //Course Code-----------------------------------------------------
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Ensure top alignment
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Ensure top alignment
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Course Code',
                        style: headerStyle,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Ensure top alignment
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' : ',
                      style: headerStyle,
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Ensure top alignment
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'CSE-541 ', style: headerStyle,
                        overflow: TextOverflow
                            .visible, // Handles overflow and adds '...'
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),

            //Assignment No --------------------------------------------------
            Row(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Ensure top alignment
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 130,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Ensure top alignment
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Assignment No',
                        style: headerStyle,
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Ensure top alignment
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' : ',
                      style: headerStyle,
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Ensure top alignment
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '01', style: headerStyle,
                        overflow: TextOverflow
                            .visible, // Handles overflow and adds '...'
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//Submit by and to -----------------------------------------------------
class SubmitByTo extends StatelessWidget {
  const SubmitByTo({super.key});

  static const TextStyle SubmitByToStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w900,
    color: Colors.black,
    letterSpacing: 0.5,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Submitted By:',
                          style: SubmitByToStyle,
                        ),
                        Container(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name :',
                                style: SubmitByToStyle,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Id No :',
                                style: SubmitByToStyle,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Intake :',
                                style: SubmitByToStyle,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Section :',
                                style: SubmitByToStyle,
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Program :',
                                style: SubmitByToStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 170,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Submitted By:',
                          style: SubmitByToStyle,
                        ),
                        Container(height: 10),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 50,
                                child: Text(
                                  'Name :',
                                  style: SubmitByToStyle,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Dep. of :',
                                style: SubmitByToStyle,
                              ),
                              SizedBox(height: 5),
                            ],
                          ),
                        ),
                        Text(
                          'Bangladesh University of Business and Technology',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text('Submittion Date: ', style: SubmitByToStyle),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
