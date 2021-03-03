import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import './SlidesScreen.dart';
import './message_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Object ob;

  @override
  void initState() {
    // TODO: implement initState
    ob = Object(fileName: 'assets/cube/final2D.obj', isAsset: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      List: [Colors.deepPurple, Colors.purple])),
              height: height,
              child: Center(
                child: Cube(
                  onSceneCreated: (Scene scene) {
                    scene.world.add(ob);
                    scene.camera.zoom = 10;
                  },
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: height * 0.65,
                ),
                Container(
                  height: height * 0.25,
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18, right: 50),
                    child: AutoSizeText(
                      'Happy Birthday\nGAYATRI!',
                      maxLines: 2,
                      style: GoogleFonts.blackHanSans(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          letterSpacing: 2,
                          fontSize: 40,
                          color: Colors.white,
                        )
                      )
                    ),
                  ),
                ),
                Container(
                  height: height * 0.1,
                  width: width,
                  child: Padding(
                    padding: EdgeInsets.only(top:2,left: 25,right: 25,bottom: 18),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        MessageScreen()));
                          },
                          child: Container(
                            width: width * 0.4,
                            height: height * 0.1-20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                List: [Colors.pinkAccent[400], Colors.pink[600],Colors.pinkAccent[400]],
                                begin: AlignmentDirectional.bottomCenter,
                                end: AlignmentDirectional.topCenter
                              ),
                              boxShadow: [BoxShadow(blurRadius: 12,color: Colors.black38)],
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(15),
                                child: AutoSizeText(
                                  'Messages',
                                  maxLines: 1,
                                    style: GoogleFonts.blackHanSans(
                                        textStyle: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                        )
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SlidesScreen()));
                          },
                          child: Container(
                            width: width * 0.4,
                            height: height * 0.1-20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              gradient: LinearGradient(
                                  List: [Colors.pinkAccent[400], Colors.pink[600],Colors.pinkAccent[400]],
                                  begin: AlignmentDirectional.bottomCenter,
                                  end: AlignmentDirectional.topCenter
                              ),
                              boxShadow: [BoxShadow(blurRadius: 12,color: Colors.black38)],
                            ),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(15),
                                child: AutoSizeText(
                                  'Slides',
                                  maxLines: 1,
                                    style: GoogleFonts.blackHanSans(
                                        textStyle: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                        )
                                    )
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
