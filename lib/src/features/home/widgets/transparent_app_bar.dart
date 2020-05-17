import 'package:flutter/material.dart';

class TransparentAppBar extends StatefulWidget {
  final Widget leading;
  final List<Widget> buttons;

  const TransparentAppBar({
    Key key,
    @required this.leading,
    @required this.buttons,
  }) : super(key: key);

  @override
  _TransparentAppBarState createState() => _TransparentAppBarState();
}

class _TransparentAppBarState extends State<TransparentAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: size.width > 550
          ? Row(
              children: [
                widget.leading,
                const Spacer(),
                ...widget.buttons,
              ],
            )
          : Row(
              children: [
                widget.leading,
                const Spacer(),
                (widget.buttons == null || widget.buttons.isEmpty)
                    ? const SizedBox()
                    : PopupMenuButton(
                        color: Colors.white,
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
