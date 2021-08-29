import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/appBar.dart';
import '/backgroudWidget.dart';
import '/livingRoom.dart';
import '/weatherwidget.dart';
import 'package:weather_icons/weather_icons.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
                    child: AppBarScreen(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13).copyWith(top: 30),
                    child: WeatherWidget(),
                  ),
                  Container(
                    child: Column(
                      children: [
                        DefaultTabController(
                          length: 4,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 2, right: 20),
                                child: TabBar(
                                  labelStyle: GoogleFonts.yantramanav(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  isScrollable: true,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Color(0xFF3A37EB),
                                      ),
                                      insets:
                                          EdgeInsets.fromLTRB(15, 5, 15, 5)),
                                  labelColor: Color(0xFF3A37EB),
                                  unselectedLabelColor: Colors.white,
                                  tabs: [
                                    Tab(
                                      text: 'Living Room',
                                    ),
                                    Tab(
                                      text: 'Kitchen',
                                    ),
                                    Tab(
                                      text: 'Bed Room',
                                    ),
                                    Tab(
                                      text: 'Bath Room',
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 460,
                                child: TabBarView(
                                  children: [
                                    LivingRoom(),
                                    Container(),
                                    Container(),
                                    Container(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
