// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 16, 58),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 106, 220, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 30),
              const Text(
                'Sweet & Smart Home',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Smart Home can change way you live in the future',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white54,
                  ),
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                splashColor: Colors.red,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 106, 220, 255),
                  ),
                  child: Center(
                    child: Text('Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 16, 58),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _appBar(),
              SizedBox(height: 20),
              _climate(),
              SizedBox(height: 30),
              _locales(),
              SizedBox(height: 30),
              _devices(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  _appBar() {
    return SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Welcome, Arya!',
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lets manage your smart home',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 106, 220, 255),
            radius: 30,
          ),
        ],
      ),
    );
  }

  _climate() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(57, 106, 220, 255),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(57, 106, 255, 223),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Cloudy',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '27 Fev 2022',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white54,
                  ),
                ),
                Text(
                  'Sao Paulo, Brazil',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
            Text(
              '28ºc',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _locales() {
    List local = ['Living room', 'Kitchen', 'Bedroom', 'Bethroom', 'W.C.'];
    return Expanded(
      flex: 1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: local.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 100,
              child: Column(
                children: [
                  Text(
                    local[index],
                    style: TextStyle(
                      fontSize: 16,
                      color: index == 0 ? Colors.white : Colors.white54,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    height: 5,
                    width: 40,
                    decoration: index == 0
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 106, 220, 255))
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.transparent),
                  ),
                ],
              ),
            );
          }),
    );
  }

  _devices() {
    List devices = [
      'Air Conditioner',
      'Smart Lamp',
      'Smart TV',
      'Google Smart Home'
    ];
    return Expanded(
      flex: 8,
      child: GridView.builder(
        itemCount: devices.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: index == 0
                  ? Color.fromARGB(255, 106, 220, 255)
                  : Color.fromARGB(57, 106, 220, 255),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: index == 0
                          ? Colors.white
                          : Color.fromARGB(87, 16, 35, 63),
                    ),
                    child: Icon(
                      index == 0
                          ? Icons.air_outlined
                          : index == 1
                              ? Icons.lightbulb
                              : index == 2
                                  ? Icons.tv
                                  : Icons.devices,
                      color: index == 0
                          ? Color.fromARGB(255, 106, 220, 255)
                          : Colors.white54,
                      size: 30,
                    ),
                  ),
                  Text(
                    '${devices[index]}',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        index == 0 ? 'On' : 'Off',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Switch(
                        value: index == 0 ? true : false,
                        onChanged: (value) {},
                        activeColor: Colors.white,
                        inactiveThumbColor: Colors.white54,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
