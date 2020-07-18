import 'package:flutter/material.dart';
import 'package:mavha_flutter_challenge/widgets/content_widget.dart';
import 'package:mavha_flutter_challenge/widgets/date_box_widget.dart';
import 'package:mavha_flutter_challenge/widgets/schedule_row_widget.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey dateBoxKey = GlobalKey();

    final leftColumnWidth = MediaQuery.of(context).size.width * 0.1875;

    final dateBoxWidth = (MediaQuery.of(context).size.width - 80) / 7;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('SCHEDULE'),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: Icon(Icons.calendar_today),
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    width: leftColumnWidth + (dateBoxWidth / 2) - 16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        DateBoxWidget(
                          DateTime(2020, 8, 2),
                          isSelected: true,
                          key: dateBoxKey,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'TODAY\`S LIST',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '8 tasks',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ContentWidget(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 28.0,
                        width: leftColumnWidth,
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Time')),
                      ),
                      Expanded(
                        child: Container(
                          height: 28.0,
                          width: leftColumnWidth,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Events'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        ScheduleRowWidget(
                          leftColumnWidth: leftColumnWidth,
                          eventTime: '9:00',
                          eventName: 'Morning Run In The Park',
                          eventDetails: 'Mon-Fri',
                          isDone: true,
                        ),
                        ScheduleRowWidget(
                          leftColumnWidth: leftColumnWidth,
                          eventTime: '10:00',
                          eventName: 'Skype Meeting With the My Contractor',
                          eventDetails: 'Delivery Overview',
                          isAlert: true,
                          isCurrent: true,
                        ),
                        ScheduleRowWidget(
                          leftColumnWidth: leftColumnWidth,
                          eventTime: '11:00',
                          eventName: 'Meeting With The Design Team',
                          eventDetails:
                              'Timeline of Visualization Project Objectives',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
