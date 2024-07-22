import 'package:flutter/material.dart';
import 'package:json_parsing/Screens/UserDataJson/UserDataProvider/userDataProvider.dart';
import 'package:provider/provider.dart';

class UserDataPage extends StatelessWidget {
  const UserDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserDataProvider userProvider = Provider.of<UserDataProvider>(context);
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          scrolledUnderElevation: 0.1,
          backgroundColor: Colors.grey,
          centerTitle: true,
          title: Text(
            'UserData',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: userProvider.userList.length,
          itemBuilder: (context, index) => Center(
            child: Container(
              margin: EdgeInsets.all(10),
              height: h * 0.43,
              width: w * 0.96,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          minimumSize: const Size(100, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          userProvider.userList[index].id.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: .75),
                        ), // Button ka text
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          minimumSize: const Size(100, 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          userProvider.userList[index].name,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: .75),
                        ), // Button ka text
                      ),
                    ],
                  ),
                  Text(
                    userProvider.userList[index].username,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    userProvider.userList[index].phone,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    userProvider.userList[index].website,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    userProvider.userList[index].email,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    userProvider.userList[index].company.name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    userProvider.userList[index].company.bs,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    userProvider.userList[index].company.catchPhrase,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    userProvider.userList[index].address.suite +
                        '  ' +
                        userProvider.userList[index].address.street +
                        userProvider.userList[index].address.city +
                        userProvider.userList[index].address.zipcode,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    userProvider.userList[index].address.geo.lat +
                        '  ' +
                        userProvider.userList[index].address.geo.lng,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
