import 'package:flutter/material.dart';
import 'package:weather_app/apiCall.dart';
import 'models/weather_details.dart';

final images = [
  'assets/images/winter.gif',
  'assets/images/rainy.gif',
  'assets/images/summer.gif',
  'assets/images/clear.jpg'
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DayWiseWeatherDetails? data;
  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }

  init() async {
    data = await fetchAlbum();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return data == null
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              data!.description!.toString().contains('rain')
                  ? Image.asset(images[1], fit: BoxFit.fill, height: 250)
                  : data!.description!.toString().contains('winter')
                      ? Image.asset(images[0], fit: BoxFit.fill, height: 250)
                      : data!.description!.toString().contains('summer')
                          ? Image.asset(images[2],
                              fit: BoxFit.fill, height: 250)
                          : data!.description!.toString().contains('snow')
                              ? Image.asset(images[0],
                                  fit: BoxFit.fill, height: 250)
                              : Image.asset(images[3],
                                  fit: BoxFit.fill, height: 250),
              Row(
                children: const <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Temperature',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Spacer(),
                  Text(
                    "Wind",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  SizedBox(width: 20),
                ],
              ),
             const SizedBox(height: 35,),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Text(data!.temperature!.replaceAll('Â', '')),
                  const Spacer(),
                  Text(data!.wind!.replaceAll(' ', '')),
                  const SizedBox(width: 15),
                ],
              )
            ],
          );
  }
}

class Day1 extends StatefulWidget {
  const Day1({Key? key}) : super(key: key);

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  DayWiseWeatherDetails? data;
  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }

  init() async {
    data = await fetchAlbum();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return data == null
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              data!.description!.toString().contains('rain')
                  ? Image.asset(images[1], fit: BoxFit.fill, height: 250)
                  : data!.description!.toString().contains('winter')
                      ? Image.asset(images[0], fit: BoxFit.fill, height: 250)
                      : data!.description!.toString().contains('summer')
                          ? Image.asset(images[2],
                              fit: BoxFit.fill, height: 250)
                          : data!.description!.toString().contains('snow')
                              ? Image.asset(images[0],
                                  fit: BoxFit.fill, height: 250)
                              : Image.asset(images[3],
                                  fit: BoxFit.fill, height: 250),
              Row(
                children: const <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Temperature",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Spacer(),
                  Text(
                    "Wind",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  SizedBox(width: 20),
                ],
              ),
               const SizedBox(height: 35,),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Text(data!.forecast![0].temperature!.replaceAll('Â', '')),
                  const Spacer(),
                  Text(data!.forecast![0].wind!.replaceAll(' ', '')),
                  const SizedBox(width: 15),
                ],
              )
            ],
          );
  }
}

class Day2 extends StatefulWidget {
  const Day2({Key? key}) : super(key: key);

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  DayWiseWeatherDetails? data;
  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }

  init() async {
    data = await fetchAlbum();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return data == null
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              data!.description!.toString().contains('rain')
                  ? Image.asset(images[1], fit: BoxFit.fill, height: 250)
                  : data!.description!.toString().contains('winter')
                      ? Image.asset(images[0], fit: BoxFit.fill, height: 250)
                      : data!.description!.toString().contains('summer')
                          ? Image.asset(images[2],
                              fit: BoxFit.fill, height: 250)
                          : data!.description!.toString().contains('snow')
                              ? Image.asset(images[0],
                                  fit: BoxFit.fill, height: 250)
                              : Image.asset(images[3],
                                  fit: BoxFit.fill, height: 250),
              Row(
                children: const <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Temperature",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Spacer(),
                  Text(
                    "Wind",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  SizedBox(width: 20),
                ],
              ),
               const SizedBox(height: 35,),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Text(data!.forecast![1].temperature!.replaceAll('Â', '')),
                  const SizedBox(width: 20),
                  const Spacer(),
                  Text(data!.forecast![0].wind!.replaceAll(' ', '')),
                  const SizedBox(width: 15),
                ],
              )
            ],
          );
  }
}

class Day3 extends StatefulWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> {
  DayWiseWeatherDetails? data;
  @override
  void initState() {
    // TODO: implement initState
    init();
    super.initState();
  }

  init() async {
    data = await fetchAlbum();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return data == null
        ? const Center(child: CircularProgressIndicator())
        : Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              data!.description!.toString().contains('rain')
                  ? Image.asset(images[1], fit: BoxFit.fill, height: 250)
                  : data!.description!.toString().contains('winter')
                      ? Image.asset(images[0], fit: BoxFit.fill, height: 250)
                      : data!.description!.toString().contains('summer')
                          ? Image.asset(images[2],
                              fit: BoxFit.fill, height: 250)
                          : data!.description!.toString().contains('snow')
                              ? Image.asset(images[0],
                                  fit: BoxFit.fill, height: 250)
                              : Image.asset(images[3],
                                  fit: BoxFit.fill, height: 250),
              Row(
                children: const <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Temperature",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  Spacer(),
                  Text(
                    "Wind",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  SizedBox(width: 20),
                ],
              ),
               const SizedBox(height: 35,),
              Row(
                children: [
                  const SizedBox(width: 15),
                  Text(data!.forecast![2].temperature!.replaceAll('Â', '')),
                  const Spacer(),
                  Text(data!.forecast![2].wind!.replaceAll('', '')),
                  const SizedBox(width: 15),
                ],
              )
            ],
          );
  }
}
