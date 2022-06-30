import 'dart:convert';

import 'package:final_weather/models/weather.dart';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather>? getWeatherData(String? location) async {
    // String cityName = 'baku';
    String apiKey = '06366a07b5d70ea7db1a607b8a82583b';

    var uri = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$apiKey&units=metric',
    );

    var response = await http.get(uri);

    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).temprature);

    if (response.statusCode == 200) {
      return Weather.fromJson(body);
    } else {
      throw Exception('Failed to load');
    }

   
  }
}
