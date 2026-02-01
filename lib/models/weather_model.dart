class Weather {
  final String city;
  final double temperature;
  final String description;
  final String mainCondition;

  Weather({
    required this.city,
    required this.temperature,
    required this.description,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json['name'],
      temperature: json['main']['temp'].toDouble(),
      description: json['weather'][0]['description'],
      mainCondition: json['weather'][0]['main'],
    );
  }
}
