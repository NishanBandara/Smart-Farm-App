import 'package:SmartFarm/DashBoards/HomePage.dart';
import 'package:SmartFarm/SignUp.dart';
import 'package:SmartFarm/Start.dart';
import 'package:SmartFarm/TestHome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authentication.dart';
import 'DashBoards/Dashboards.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: Authentication())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white),
        home: IOTDashboards(),
      ),
    );
  }
}
