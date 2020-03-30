import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/home.dart';
import './services/app_service.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AppService(),
    child: StarterApp(),
  ));
}

class StarterApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Cur App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Center(
        child: HomeScreen(),
      ),
    );
  }
}
