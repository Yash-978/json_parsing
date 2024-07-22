import 'package:flutter/material.dart';
import 'package:json_parsing/Screens/UserDataJson/UserDataProvider/userDataProvider.dart';
import 'package:provider/provider.dart';

import 'Screens/PhotosJson/PhotoProvider/photoProvider.dart';
import 'Screens/PhotosJson/PhotoView/photoView.dart';
import 'Screens/UserDataJson/UserDataView/userDataView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PhotoProvider()),
        ChangeNotifierProvider(create: (context) => UserDataProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: PhotoPage(),
        initialRoute: '/userData',

        routes: {
          '/': (context) => PhotoPage(),
          '/userData': (context) => UserDataPage(),
        },
      ),
    );
  }
}
