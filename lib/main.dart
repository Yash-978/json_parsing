import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/PhotosJson/PhotoProvider/photoProvider.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TodoProvider()

        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
