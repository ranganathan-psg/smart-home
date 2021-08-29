import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '/backgroudWidget.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:intl/intl.dart';

class AireConditionerRoute extends CupertinoPageRoute {
  AireConditionerRoute()
      : super(builder: (BuildContext context) => new AireConditionerScreen());

  // OPTIONAL IF YOU WISH TO HAVE SOME EXTRA ANIMATION WHILE ROUTING
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return ScaleTransition(
      scale: animation,
      alignment: Alignment.centerLeft,
      child: new AireConditionerScreen(),
    ); // return new FadeTransition(
    //   opacity: animation,
    //   child: new AireConditionerScreen(),
    // );
  }
}

class AireConditionerScreen extends StatefulWidget {
  const AireConditionerScreen({Key? key}) : super(key: key);

  @override
  _AireConditionerScreenState createState() => _AireConditionerScreenState();
}

class _AireConditionerScreenState extends State<AireConditionerScreen> {
  var isActive = false;

  var sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 20,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Air Conditioner",
                        style: GoogleFonts.yantramanav(
                          textStyle: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white.withOpacity(0.13),
                      ),
                      height: 90,
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Lights up since",
                                  style: GoogleFonts.yantramanav(
                                    textStyle: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "3hr 15s",
                                  style: GoogleFonts.yantramanav(
                                    textStyle: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Switch(
                                onChanged: (bool value) {
                                  setState(() {
                                    isActive = value;
                                  });
                                },
                                activeColor: Colors.white,
                                activeTrackColor: Colors.green,
                                value: isActive,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SleekCircularSlider(
                      appearance: CircularSliderAppearance(
                          angleRange: 360,
                          counterClockwise: true,
                          size: 250,
                          customWidths: CustomSliderWidths(
                              handlerSize: 15,
                              trackWidth: 8,
                              progressBarWidth: 20,
                              shadowWidth: 40),
                          infoProperties: InfoProperties(
                            bottomLabelText: '°C',
                            mainLabelStyle: GoogleFonts.yantramanav(
                              textStyle: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )),
                      innerWidget: (double value) {
                        var result = value.ceil();
                        return Center(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "$result °C ",
                                  style: GoogleFonts.yantramanav(
                                    textStyle: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      min: 0,
                      max: 100,
                      initialValue: 16,
                      onChange: (double value) {
                        print(value);
                      }),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0Xff8D8EEC),
                              Color(0Xff4C4AED),
                            ],
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.ac_unit_sharp,
                              size: 40,
                              color: Colors.white,
                            ),
                            Center(
                              child: Text(
                                "Cool",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white.withOpacity(0.123),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.av_timer,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "Off",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: Colors.white.withOpacity(0.123),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.light,
                              size: 40,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Text(
                                "Smart",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.yantramanav(
                                  textStyle: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 65,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0Xff8D8EEC),
                              Color(0Xff4C4AED),
                            ],
                          ),
                        ),
                        child: Icon(
                          Icons.timer,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white.withOpacity(0.13),
                        ),
                        height: 85,
                        width: 250,
                        child: Center(
                          child: SfSlider(
                            min: 0.0,
                            max: 100.0,
                            activeColor: Color(0xFF1E2E91),
                            value: sliderValue,
                            interval: 20,
                            trackShape: SfTrackShape(),
                            // showTicks: true,
                            showLabels: true,
                            enableTooltip: true,

                            labelFormatterCallback:
                                (dynamic actualValue, String formattedText) {
                              return formattedText + "H";
                            },
                            // minorTicksPerInterval: 1,
                            onChanged: (dynamic value) {
                              setState(() {
                                sliderValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
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
