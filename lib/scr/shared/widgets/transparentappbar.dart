import 'package:flutter/material.dart';

class TransparentAppBar extends StatefulWidget {
  final Widget lettering;
  final List<Widget> buttons;

  const TransparentAppBar({Key key, this.lettering, this.buttons})
      : super(key: key);

  @override
  _TransparentAppBarState createState() => _TransparentAppBarState();
}

class _TransparentAppBarState extends State<TransparentAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size.width);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: size.width > 550
          ? Row(
              // For large screen
              children: [
                widget.lettering,
                Spacer(),
                ...widget.buttons,
              ],
            )
          : Row(
              // For small screen
              children: [
                widget.lettering,
                Spacer(),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) =>
                      List<PopupMenuItem>.from(
                    widget.buttons.map(
                      (e) => PopupMenuItem(
                        child: e,
                      ),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
