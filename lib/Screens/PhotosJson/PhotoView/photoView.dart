import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../PhotoProvider/photoProvider.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // PhotoProvider photoProviderFalse =
    //     Provider.of<PhotoProvider>(context, listen: false);
    PhotoProvider photoProviderTrue = Provider.of<PhotoProvider>(context);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(backgroundColor: Colors.grey,
        appBar: AppBar(centerTitle: true,

          title: Text('Json Data'),
        ),
        body: ListView.builder(
          itemCount: photoProviderTrue.photoList.length,
          itemBuilder: (context, index) => Card(color: Colors.transparent,
            child: ListTile(
              leading: Image.network(
                  photoProviderTrue.photoList[index].url),
              title: Text(photoProviderTrue.photoList[index].title,style: TextStyle(color: Colors.white,fontSize: 20),),
              subtitle: Text(photoProviderTrue.photoList[index].id.toString(),style: TextStyle(color: Colors.white,fontSize: 20)),
            ),
          ),
        ));
  }
}
