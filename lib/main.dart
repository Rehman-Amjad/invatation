import 'package:flutter/material.dart';
import 'package:invatation/pages/home/home_screen.dart';
import 'package:sizer/sizer.dart';

import 'config/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientation,deviceType){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Invatation',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: HomeScreen(),
          // routerConfig: Routes().routers,
          // routeInformationParser: Routes().routers.routeInformationParser,
          // routerDelegate: Routes().routers.routerDelegate,
        );
      }
    );
  }
}

