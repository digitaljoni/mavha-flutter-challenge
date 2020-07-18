import 'package:flutter/material.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    this.child,
    Key key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              32.0,
            ),
            topRight: Radius.circular(
              32.0,
            ),
          ),
        ),
        child: child,
      ),
    );
  }
}
