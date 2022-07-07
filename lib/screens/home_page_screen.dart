import 'package:final_weather/repositories/weather_api_client.dart';
import 'package:final_weather/shared_widgets/city_weather_container.dart';
import 'package:flutter/material.dart';

import '../models/weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient weatherApiClient = WeatherApiClient();
  Weather? weatherData;

  Future<Weather> getData() async {
    weatherData = await weatherApiClient.getWeatherData('Baku');
    return weatherData!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Choose City',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot<Weather> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.separated(
                padding: const EdgeInsets.all(10),
                itemCount: 7,
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 15);
                },
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/second'),
                      child: cityWeatherContainer('${weatherData?.cityName}',
                          '${weatherData!.temprature}'),
                    ),
                  );
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
