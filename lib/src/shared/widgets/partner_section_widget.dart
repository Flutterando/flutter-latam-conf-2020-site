import 'package:flutter/material.dart';

class PartnerSectionWidget extends StatelessWidget {
  const PartnerSectionWidget({Key key, @required this.images})
      : super(key: key);

  final List<Image> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      color: Colors.white,
      alignment: Alignment.center,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          vertical: 40,
        ),
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            child: images[index],
          ),
        ),
      ),
    );
  }
}
