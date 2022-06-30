import 'package:final_weather/shared_widgets/card_widget.dart';
import 'package:final_weather/shared_widgets/city_weather_container.dart';
import 'package:flutter/material.dart';

import '../models/weather.dart';
import '../shared_widgets/divider.dart';

class CityPage extends StatefulWidget {
  const CityPage({Key? key}) : super(key: key);

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  Weather? weatherData;

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          )
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      appBar: AppBar(
        title: const Text(
          'Day and Date',
          style: TextStyle(color: Color.fromARGB(180, 0, 0, 0)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 250, 241),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color.fromARGB(180, 0, 0, 0),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: const Color.fromARGB(180, 0, 0, 0),
          ),
        ],
      ),
      body: Column(
        children: [
           Padding(
            padding: const EdgeInsets.all(5.0),
            child: cityWeatherContainer('${weatherData?.cityName}', '${weatherData?.temprature}'),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'DETAILS',
              style: TextStyle(
                  fontSize: 28, letterSpacing: 20, color: Colors.black45),
            ),
          ),
          cardWidget(
            '${weatherData?.feelsLike}',
            35,
            36,
          ),
          const MyDivider(),
          cardWidget(
            'ok',
            35,
            36,
          ),
          const MyDivider(),
          cardWidget(
            'ok',
            35,
            36,
          ),
          const MyDivider(),
          cardWidget(
            'ok',
            35,
            36,
          ),
          const MyDivider(),
          cardWidget(
            'ok',
            35,
            36,
          ),
          const MyDivider(),
          cardWidget(
            'ok',
            35,
            36,
          ),
          const MyDivider(),
          cardWidget(
            'ok',
            35,
            36,
          ),
        ],
      ),
    );
  }
}
