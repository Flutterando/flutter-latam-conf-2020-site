import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// A tile to represent a given content.
///
/// With exception of [trailing], all arguments are mandatory and must not be `null`.
class ContentTile extends StatelessWidget {
  /// The color of the color indicator at the left.
  final Color leadingColor;

  /// The text that will be shown on the tile, above the [date].
  final String text;

  /// The date that wil be shown on the tile, below the [text].
  final DateTime date;

  /// The [Widget] at the right of the [ContentTile].
  ///
  /// This parameter is optional.
  ///
  /// The [trailing] widget will be fitted inside a [FittedBox] so it doesn't overflow when
  /// it's height is greater than [ContentTile]'s height.
  final Widget trailing;

  const ContentTile({
    Key key,
    @required this.leadingColor,
    @required this.text,
    @required this.date,
    this.trailing,
  })  : assert(leadingColor != null),
        assert(text != null),
        assert(date != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: 10,
            color: leadingColor,
          ),
          const SizedBox(width: 32.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _BasicInfo(
                  title: text,
                  date: date,
                ),
                trailing != null
                    ? FittedBox(child: trailing)
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BasicInfo extends StatelessWidget {
  const _BasicInfo({
    Key key,
    @required this.title,
    @required this.date,
  }) : super(key: key);

  final String title;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          DateFormat.yMMMMEEEEd().format(date),
          style: const TextStyle(
            fontSize: 10.0,
          ),
        ),
      ],
    );
  }
}
