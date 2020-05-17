import 'package:flutter/material.dart';
import 'package:flutter_latam_conf_2020/src/features/home/widgets/main_section_widget.dart';
import 'package:flutter_latam_conf_2020/src/features/home/widgets/partner_section_widget.dart';
import 'package:flutter_latam_conf_2020/src/features/home/widgets/schedule_section_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          MainSectionWidget(),
          ScheduleSectionWidget(),
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
