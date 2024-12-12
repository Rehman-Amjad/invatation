import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:invatation/config/routes/routes_name.dart';
import 'package:invatation/pages/home/home_screen.dart';

class Routes{

 final GoRouter routers = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => HomeScreen(),
        ),
        GoRoute(
          name: RoutesName.home,
            path: '/home',
            builder: (context, state) => HomeScreen(),
        )
      ],
    errorBuilder: (context,state){
        return Scaffold(
          body: Center(
            child: Text('An error occurred: ${state.error}'),
          ),
        );
    },
  );

}