import 'package:flutter/material.dart';
import 'package:my_gallery_app/image.dart';
import 'package:permission_handler/permission_handler.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState

    //Permission.storage.request();
    Future<bool> isShown = Permission.storage.shouldShowRequestRationale;
    Future<bool> isShown1 = Permission.accessMediaLocation.shouldShowRequestRationale;
    
    print(isShown);
    print(isShown1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xffe67e22),
          title: Text(
            'Gallery',
            style: TextStyle(color: Colors.white, fontFamily: 'Bold'),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.only(bottom: 15),
            tabs: <Widget>[
              Text(
                'Images',
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: 'Medium'),
              ),
              // Text(
              //   'Videos',
              //   style: TextStyle(
              //       color: Colors.white, fontSize: 18, fontFamily: 'Medium'),
              // ),
              // Text(
              //   'Audios',
              //   style: TextStyle(
              //       color: Colors.white, fontSize: 18, fontFamily: 'Medium'),
              // ),
              // Text(
              //   'Files',
              //   style: TextStyle(
              //       color: Colors.white, fontSize: 18, fontFamily: 'Medium'),
              // ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Images(),
          ],
        ),
      ),
    );
  }
}
