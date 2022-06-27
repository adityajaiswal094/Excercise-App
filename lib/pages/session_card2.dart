import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SessionPerformed extends StatelessWidget {
  const SessionPerformed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        // color: Colors.deepPurple[300],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[350]!, width: 1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Session 2",
                style: TextStyle(fontSize: 22),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  "Performed",
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                "Enter Pain Score",
                style: TextStyle(color: Colors.grey, fontSize: 10.0),
              ),
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(20)),
                    child: const Icon(
                      CupertinoIcons.arrow_counterclockwise,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Text(
                      "Retry",
                      style: TextStyle(color: Colors.grey[800], fontSize: 14.0),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.deepPurple[100],
            height: 100,
            width: 100,
          ),
        ],
      ),
    );
  }
}
