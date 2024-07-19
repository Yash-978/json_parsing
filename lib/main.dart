import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/PhotosJson/PhotoProvider/photoProvider.dart';
import 'Screens/PhotosJson/PhotoView/photoView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PhotoProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PhotoPage(),
      ),
    );
  }
}
