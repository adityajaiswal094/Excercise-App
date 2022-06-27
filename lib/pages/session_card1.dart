import 'package:flutter/material.dart';

class SessionComplete extends StatelessWidget {
  const SessionComplete({Key? key}) : super(key: key);

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
                "Session 1",
                style: TextStyle(fontSize: 22),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[400],
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  "Completed",
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                "Performed At",
                style: TextStyle(color: Colors.grey, fontSize: 10.0),
              ),
              Text(
                "8:12 AM",
                style: TextStyle(color: Colors.grey[700], fontSize: 11.0),
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
