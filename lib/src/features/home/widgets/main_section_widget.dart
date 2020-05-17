import 'package:flutter/material.dart';
import 'package:flutter_latam_conf_2020/src/features/home/widgets/main_section_content_widget.dart';
import 'package:flutter_latam_conf_2020/src/features/home/widgets/transparent_app_bar.dart';

class MainSectionWidget extends StatelessWidget {
  const MainSectionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/large_background.png'),
          ),
        ),
        child: Stack(
          children: [
            MainSectionContentWidget(),
            TransparentAppBar(
              leading: Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Flutterando',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
              buttons: [],
            ),
          ],
        ),
      ),
    );
  }
}
