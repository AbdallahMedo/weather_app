import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

import 'get_weather_states.dart';

class GetWeatherCubit extends Cubit<WeatherState>{
  GetWeatherCubit(): super(WeatherInitialState());
   WeatherModel? weatherModel;



  getWeather({required String cityName})async
  {
    try {
      weatherModel = await WeatherService(Dio()).getCurrentWeather(
          cityName: cityName
      );
      emit(WeatherLoadedState(weatherModel!));
    }catch(e)
    {
      emit(WeatherFailureState());
    }

    }
  }
