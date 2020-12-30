import 'package:flutter/material.dart';
import 'package:SmartFarm/Start.dart';
import 'package:SmartFarm/DashBoards/SampleGIS.dart';

class IOTDashboards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu, color: Colors.white), onPressed: () {}),
        backgroundColor: Color.fromRGBO(0, 172, 142, 5.0),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notification_important,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white),
              onPressed: () {}),
        ],
        elevation: 7.0,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        // first row

        child: Column(
          children: [
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: InkWell(
                    child: Card(
                      // color: Color.fromRGBO(255, 84, 84, 1.0),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.control_point_rounded,
                              size: 50,
                              color: Color.fromRGBO(0, 172, 142, 5.0),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "WATER",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: "Raleway",
                                  fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      print("TEST");

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SampleGIS()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Card(
                    // color: Color.fromRGBO(255, 84, 84, 1.0),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.control_point_rounded,
                            size: 50,
                            color: Color.fromRGBO(0, 172, 142, 5.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "HUMIDITY",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontFamily: "Raleway",
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // second row
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Card(
                        // color: Color.fromRGBO(115, 189, 136, 1.0),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.control_point_rounded,
                                size: 50,
                                color: Color.fromRGBO(0, 172, 142, 5.0),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "WIND SPEED/DIRECTION",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 8,
                                    fontFamily: "Raleway",
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Card(
                        // color: Color.fromRGBO(255, 84, 84, 1.0),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.control_point_rounded,
                                size: 50,
                                color: Color.fromRGBO(0, 172, 142, 5.0),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "PH VALUE",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: "Raleway",
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // third row

            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Card(
                        // color: Color.fromRGBO(115, 189, 136, 1.0),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.control_point_rounded,
                                size: 50,
                                color: Color.fromRGBO(0, 172, 142, 5.0),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "TEMPERATURE",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: "Raleway",
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Card(
                        // color: Color.fromRGBO(255, 84, 84, 1.0),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.control_point_rounded,
                                size: 50,
                                color: Color.fromRGBO(0, 172, 142, 5.0),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                " CONTROLLING",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: "Raleway",
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

// FORTTH ROW
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Card(
                        // color: Color.fromRGBO(115, 189, 136, 1.0),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.control_point_rounded,
                                size: 50,
                                color: Color.fromRGBO(0, 172, 142, 5.0),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                "FURTILIZER",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: "Raleway",
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Card(
                        // color: Color.fromRGBO(255, 84, 84, 1.0),
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.control_point_rounded,
                                size: 50,
                                color: Color.fromRGBO(0, 172, 142, 5.0),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                " CHEMICALS",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 10,
                                    fontFamily: "Raleway",
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
