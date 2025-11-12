
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity, // Height for the blue container
              color: Colors.blue, // Blue background
              child: Padding(padding: const EdgeInsets.all(0)),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  WeatherCard(
                    weather: CityWeather(city: 'PhnomPenh', min: 10.0, max: 30.0, current: 12.2, asset: 'assets/images/ex4/cloudy.png', colors: GradientColors.phnompenh),
                  ),
                  WeatherCard(
                    weather: CityWeather(city: 'Paris', min: 10.0, max: 40.0, current: 22.2, asset: 'assets/images/ex4/sunnyCloudy.png', colors: GradientColors.paris),
                  ),
                  WeatherCard(
                    weather: CityWeather(city: 'Paris', min: 10.0, max: 40.0, current: 45.2, asset: 'assets/images/ex4/sunny.png', colors: GradientColors.rome),
                  ),
                  WeatherCard(
                    weather: CityWeather(city: 'Paris', min: 10.0, max: 40.0, current: 45.2, asset: 'assets/images/ex4/veryCloudy.png', colors: GradientColors.toulous),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

enum GradientColors {
  phnompenh(
    LinearGradient(
      colors: [Colors.purpleAccent, Colors.purple],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  paris(
    LinearGradient(
      colors: [Colors.cyanAccent, Colors.cyan],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  rome(
    LinearGradient(
      colors: [Colors.pinkAccent, Colors.pink],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
  toulous(
    LinearGradient(
      colors: [Colors.orangeAccent, Colors.orange],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  final LinearGradient gradient;
  const GradientColors(this.gradient);
}

class CityWeather {
  final String city;
  final double min;
  final double max;
  final double current;
  final String asset;
  final GradientColors colors;

  CityWeather({
    required this.city,
    required this.min,
    required this.max,
    required this.current,
    required this.asset,
    required this.colors,
  });
}

class WeatherCard extends StatelessWidget {
  final CityWeather weather;
  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: PhysicalModel(
        color: Colors.white,
        elevation: 6,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            gradient: weather.colors.gradient,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(weather.asset, width: 48, height: 48,),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            weather.city,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Column(
                            children: [
                              tempStyle('Min', weather.min),
                              SizedBox(height: 8),
                              tempStyle('Max', weather.max),
                              SizedBox(height: 8,)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${weather.current}°C',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget tempStyle(String text, double temp) {
  return Row(
    children: [
      Text(text, style: TextStyle(color: const Color.fromARGB(251, 207, 201, 201)),),
      SizedBox(width: 5),
      Text('$temp°C', style: TextStyle(color: const Color.fromARGB(251, 207, 201, 201)),)
    ],
  );
}
