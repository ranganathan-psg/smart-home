import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarScreen extends StatelessWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          FeatherIcons.alignLeft,
          color: Colors.white,
          size: 30,
        ),
        Spacer(),
        Text(
          'Smart Home',
          style: GoogleFonts.yantramanav(
            textStyle: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        Spacer(),
        Icon(
          FeatherIcons.moreHorizontal,
          color: Colors.white,
          size: 40,
        )
      ],
    );
  }
}
