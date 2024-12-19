
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/get_weather_cubit/get_weather_cubit.dart';


class SearchView extends StatelessWidget {
   SearchView({super.key});





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "Search city",
          style: TextStyle(
            //  fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 10),
        child: TextField(
          onSubmitted: (value) async
          {
            var getWeatherCubit =  BlocProvider.of<GetWeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
            Navigator.of(context).pop();

          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
             // borderSide:const BorderSide(color: Colors.red)
            ),
            labelText:"Search",
            hintText: "Enter city you want to search",
            suffixIcon: IconButton(
              onPressed: ()
              {},

              icon:const Icon(Icons.search,)
            ),



          ),



        ),
      ),
    );
  }
}
