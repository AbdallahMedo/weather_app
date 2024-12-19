import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherFailure extends StatelessWidget {
  const WeatherFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
         SizedBox(height: 10,),

         Center(
           child: Text(
             'Oops there was an error, try later',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               fontSize: 18.0,
             ),
           ),
         ),
      ],
    );
  }
}
