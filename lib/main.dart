import 'package:flutter/material.dart';
import 'admit_Card.dart';
import 'ass_report_cover.dart';

void main() {
  runApp(const AdmitCardApp());
}

class AdmitCardApp extends StatelessWidget {
  const AdmitCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cover Page',
      debugShowCheckedModeBanner: false,
      home: SafeArea(

        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Zobaer Hossain',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.teal[500],
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Container(

              color: Colors.teal[100],


              child: Column(
                 children: [
                   SizedBox(height: 20,),

                   AdmitCard(),
                SizedBox(height: 20,),
                AssReportCoverPage(),
                 ],
               ),
            ),
          ),
        ),
      ),
    );
  }
}
