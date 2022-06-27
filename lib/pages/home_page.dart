import 'package:exercise_app/pages/session_card1.dart';
import 'package:exercise_app/pages/session_card2.dart';
import 'package:exercise_app/pages/session_card3.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomCenter, children: [
      Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Aditya',
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[350]!, width: 1.5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today's Progress",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.grey[600]),
                            ),
                            Text(
                              "50%",
                              style: TextStyle(
                                  fontSize: 25, color: Colors.blue[800]),
                            ),
                          ],
                        ),
                      ),
                      LinearPercentIndicator(
                        percent: 0.5,
                        progressColor: Colors.blue,
                        barRadius: const Radius.circular(10),
                        lineHeight: 8.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.done),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Completed",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text("2 sessions"),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.arrow_forward_rounded),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Pending",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text("2 sessions"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 8.0, left: 20.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Progress Line
                    Container(
                      color: Colors.deepPurple[300],
                      height: 400,
                      width: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        children: const [
                          SessionComplete(),
                          SizedBox(
                            height: 20,
                          ),
                          SessionPerformed(),
                          SizedBox(
                            height: 20,
                          ),
                          NewSession(),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width / 1.15,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.purple[400]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.play_arrow_rounded,
                color: Colors.white,
                size: 40,
              ),
              Text(
                "Start Session",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
