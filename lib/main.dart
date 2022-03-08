import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/theme/colors/light_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: LightColors.mainColor, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));

  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return 
    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider<UserBloc>(create: (BuildContext context) => UserBloc()),
    //   ],
    //   child: 
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: LightColors.mainColor,
              displayColor: LightColors.mainColor,
              fontFamily: 'Poppins'),
        ),
        initialRoute: '/homePage',
        getPages: [
          GetPage(name: '/homePage', page: () => HomePage()),
        ],
      // ),
    );
  }
}
