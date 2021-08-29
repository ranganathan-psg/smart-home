import 'package:flutter/cupertino.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF120709),
            // Color(0xFF144951),
            Color(0xFF094249),
          ],
        ),
      ),
    );
  }
}
