import 'package:flutter/material.dart';
import 'package:mavha_flutter_challenge/schedule.dart';

class GridEventWidget extends StatelessWidget {
  const GridEventWidget({
    this.title: 'All Tasks',
    this.iconData: Icons.assignment,
    this.items: 0,
    Key key,
  }) : super(key: key);

  final String title;
  final IconData iconData;
  final int items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Schedule(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFf1f3f7),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFdae6fd),
                ),
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.all(10.0),
                child: Icon(
                  iconData,
                  size: 24.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
                child: Text(
                  '$title',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  items >= 1000
                      ? SizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.access_time,
                            color: Colors.grey,
                            size: 18.0,
                          ),
                        ),
                  Text(
                    '$items Items',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
