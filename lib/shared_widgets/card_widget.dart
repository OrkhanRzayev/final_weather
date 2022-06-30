import 'package:final_weather/models/weather.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../repositories/weather_api_client.dart';

Weather? _weather;
WeatherApiClient weatherApiClient = WeatherApiClient();

Widget cardWidget(String feelsLike, double temprature, int humidity) {
  return Card(
    elevation: 0,
    color: kMainColor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            feelsLike,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          width: 100,
        ),
        Text(
          '${_weather?.humidity}',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const Icon(
          Icons.sunny,
          size: 25,
        ),
        Text(
          '${_weather?.temprature}',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
