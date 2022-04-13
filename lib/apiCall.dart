import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/weather_details.dart';

Future<DayWiseWeatherDetails> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://goweather.herokuapp.com/weather/kanyakumari'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    return DayWiseWeatherDetails.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
