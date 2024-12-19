import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/weather_info_page.dart';

import '../cubits/get_weather_cubit/get_weather_cubit.dart';
import '../cubits/get_weather_cubit/get_weather_states.dart';
import '../widgets/no_weather_page.dart';
import '../widgets/weather_failure.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, });



  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:BlocBuilder<GetWeatherCubit ,WeatherState>(
         builder:(context ,state){
           if(state is WeatherInitialState)
           {
             return const NoWeatherPage();
           }else if(state is WeatherLoadedState)
           {
             return  WeatherInfoPage(weather: state.weatherModel,);
           }else
           {
             return const WeatherFailure();
           }
         },
    ),
   );
  }
}
