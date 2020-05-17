import 'package:flutter/material.dart';
import 'package:flutter_latam_conf_2020/src/shared/widgets/content_tile_widget.dart';

class ScheduleSectionWidget extends StatelessWidget {
  const ScheduleSectionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const contentSize = 500.0;

    return Expanded(
      flex: 2,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xff01B9FD),
        alignment: Alignment.center,
        child: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 20,
          ),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: contentSize,
              child: ContentTileWidget(
                leadingColor: Colors.yellow,
                text: 'Evento Principal',
                date: DateTime.now(),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: contentSize,
              child: ContentTileWidget(
                leadingColor: Colors.yellow,
                text: 'Evento Principal',
                date: DateTime.now(),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: contentSize,
              child: ContentTileWidget(
                leadingColor: Colors.yellow,
                text: 'Evento Principal',
                date: DateTime.now(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
