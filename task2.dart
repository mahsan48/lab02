import 'dart:async';


Future<String> fetchWeatherData() async {
  print('Fetching weather data...');
  

  await Future.delayed(Duration(seconds: 3));
  

  bool success = true;
  
  if (success) {
    return 'Weather data: Sunny, 25°C';
  } else {

    throw Exception('Failed to fetch weather data');
  }
}

void main() async {
  try {
  
    String weatherDetails = await fetchWeatherData();
    print('Weather fetched: $weatherDetails');
  } catch (e) {
   
    print('Error: $e');
  }
}
