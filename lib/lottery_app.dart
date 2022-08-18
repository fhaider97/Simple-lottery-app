import 'package:flutter/material.dart';
import 'dart:math';

class Lottery extends StatefulWidget {
  const Lottery({Key? key}) : super(key: key);

  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lottery App",
        ),
        centerTitle: true,
        backgroundColor: Colors.teal[300],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
              "Your Lottery winning number is 4",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
            )),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 190,
                width: 240,
                decoration: BoxDecoration(
                    color: x == 4 ? Colors.teal[200] : Colors.red[200],
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: x == 4
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.done_all_outlined,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Congratulations!! You've won the lottery, your number is $x",
                              textAlign: TextAlign.center,
                            )
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.error,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Better luck next time your number is $x,\ntry again",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                )),
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[300],
        onPressed: () {
          x = random.nextInt(8);
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
