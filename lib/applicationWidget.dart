import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationWidget extends StatefulWidget {
  final title;

  const ApplicationWidget(this.title);

  @override
  _ApplicationWidgetState createState() => _ApplicationWidgetState();
}

class _ApplicationWidgetState extends State<ApplicationWidget> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white.withOpacity(0.2),
      ),
      height: 150,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0).copyWith(bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.title == "Smart Lamp"
                    ? Image(
                        image: AssetImage(
                          'asset/images/hangging lamp.png',
                        ),
                        height: 60,
                        color: Colors.white,
                      )
                    : widget.title == "Smart TV"
                        ? Padding(
                            padding:
                                const EdgeInsets.all(5).copyWith(bottom: 0),
                            child: Icon(
                              Icons.tv_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                          )
                        : widget.title == "Speaker"
                            ? Padding(
                                padding: const EdgeInsets.all(5.0)
                                    .copyWith(bottom: 0),
                                child: Icon(
                                  Icons.speaker_outlined,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              )
                            : Container(
                                width: 0,
                                height: 0,
                              ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0)
                .copyWith(left: 20, bottom: 0, top: 5, right: 15),
            child: Text(
              widget.title,
              style: GoogleFonts.yantramanav(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  isActive ? "On" : "Off",
                  style: GoogleFonts.yantramanav(
                    textStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Switch(
                  onChanged: (bool value) {
                    setState(() {
                      isActive = value;
                    });
                  },
                  activeColor: Colors.white,
                  activeTrackColor: Colors.green,
                  value: isActive,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
