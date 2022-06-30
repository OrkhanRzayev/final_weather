import 'package:final_weather/models/weather.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';


  Weather? _weather;
  
  Widget cityWeatherContainer(String location, String temprature) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        color: kCityCardColor,
        width: double.infinity,
        height: 130,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Baku',
                    style: kCityNameStyle,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    '${_weather?.temprature}°',
                    style: kTemprature,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.umbrella,
                  color: kMainColor,
                ),
                Text(
                  '${_weather?.description}',
                  style: kDescription,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

