import 'package:flutter/material.dart';
import 'package:mavha_flutter_challenge/widgets/content_widget.dart';
import 'package:mavha_flutter_challenge/widgets/date_box_widget.dart';
import 'package:mavha_flutter_challenge/widgets/grid_event_widget.dart';

class MyList extends StatelessWidget {
  const MyList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('MY LIST'),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 36.0,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  DateBoxWidget(
                    DateTime(2020, 7, 28),
                  ),
                  DateBoxWidget(
                    DateTime(2020, 7, 29),
                  ),
                  DateBoxWidget(
                    DateTime(2020, 7, 30),
                  ),
                  DateBoxWidget(
                    DateTime(2020, 8, 1),
                  ),
                  DateBoxWidget(
                    DateTime(2020, 8, 2),
                    isSelected: true,
                  ),
                  DateBoxWidget(
                    DateTime(2020, 8, 3),
                  ),
                  DateBoxWidget(
                    DateTime(2020, 8, 4),
                  ),
                ],
              ),
            ),
            ContentWidget(
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: GridView.count(
                  childAspectRatio: .80,
                  crossAxisCount: 2,
                  children: <Widget>[
                    GridEventWidget(
                      items: 20,
                    ),
                    GridEventWidget(
                      title: 'Personal',
                      iconData: Icons.person_outline,
                      items: 100,
                    ),
                    GridEventWidget(
                      title: 'Work',
                      iconData: Icons.work,
                      items: 250,
                    ),
                    GridEventWidget(
                      title: 'Ideas',
                      iconData: Icons.lightbulb_outline,
                      items: 1000,
                    ),
                    GridEventWidget(
                      title: 'Art Work',
                      iconData: Icons.color_lens,
                      items: 42,
                    ),
                    GridEventWidget(
                      title: 'Urgently',
                      iconData: Icons.error_outline,
                      items: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
