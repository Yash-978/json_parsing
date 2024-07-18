import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TodoProvider extends ChangeNotifier
{
  Future<void> jsonParsing()
  async {
    String json =await rootBundle.loadString('assets/Json/photos.json');

  }

}