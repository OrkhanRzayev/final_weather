class Weather {
  String? cityName;
  double? temprature;
  double? feelsLike;

  String? description;
  int? pressure;
  int? humidity;
  double? windSpeed;
  String? icon;

  Weather({
    this.cityName,
    this.temprature,
    this.feelsLike,
    this.description,
    this.pressure,
    this.humidity,
    this.windSpeed,
    this.icon,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json['name'];
    temprature = json['main']['temp'];
    feelsLike = json['main']['feels_like'];

    description = json['weather'][0]['description'];
    pressure = json['main']['pressure'];
    humidity = json['main']['humidity'];
    windSpeed = json['wind']['speed'];
    icon = json['weather'][0]['icon'];
  }
}
