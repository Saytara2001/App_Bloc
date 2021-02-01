import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/Bloc.dart';
import 'package:weather_bloc/CallApi.dart';
import 'package:weather_bloc/SearchPage.dart';
void main() {
  runApp(AppBloc());
}
class AppBloc extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.black26,
          body:BlocProvider(
            builder:(context)=>WeatherBloc(WeatherRepo()),
            child: SearchPage(),
          ),
        ),
      ),
    );
  }

}