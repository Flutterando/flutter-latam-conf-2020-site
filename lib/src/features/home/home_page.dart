import 'package:flutter/material.dart';
import 'package:flutter_latam_conf_2020/src/shared/widgets/partner_section_widget.dart';
import 'package:flutter_latam_conf_2020/src/shared/widgets/rectangle_button_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/large_background.png'),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  bottom: 40,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Flutter LATAM Conf 2020',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Dia 04 de Junho',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RectangleButtonWidget(
                      buttonText: 'PARTICIPE',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          PartnerSectionWidget(
            images: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/en/9/93/Nubank_logo.png',
              )
            ],
          ),
        ],
      ),
    );
  }
}
