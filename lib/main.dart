import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamAPoints',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamAPoints++;
                      });
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamAPoints += 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamAPoints += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 350,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Column(children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    '$teamBPoints',
                    style: const TextStyle(
                      fontSize: 150,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamBPoints++;
                      });
                    },
                    child: const Text(
                      'Add 1 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 2;
                      });
                    },
                    child: const Text(
                      'Add 2 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50)),
                    onPressed: () {
                      setState(() {
                        teamBPoints += 3;
                      });
                    },
                    child: const Text(
                      'Add 3 Point',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
