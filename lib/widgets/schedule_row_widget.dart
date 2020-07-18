import 'package:flutter/material.dart';

class ScheduleRowWidget extends StatelessWidget {
  const ScheduleRowWidget({
    Key key,
    @required this.leftColumnWidth,
    @required this.eventTime,
    @required this.eventName,
    @required this.eventDetails,
    this.isDone: false,
    this.isAlert: false,
    this.isCurrent: false,
  }) : super(key: key);

  final double leftColumnWidth;
  final String eventTime;
  final String eventName;
  final String eventDetails;
  final bool isDone;
  final bool isAlert;
  final bool isCurrent;

  Widget _buildIcon(BuildContext context) {
    if (isDone) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Icon(
          Icons.check,
          color: Colors.grey,
        ),
      );
    }

    if (isAlert) {
      return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Icon(
          Icons.notifications_active,
          color: Theme.of(context).primaryColor,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Icon(
        Icons.notifications_none,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: leftColumnWidth,
                child: Text(
                  eventTime,
                  style: isCurrent
                      ? TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        )
                      : null,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Color(0xFFf1f3f7),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.only(
                    left: 16.0,
                    top: 16.0,
                    bottom: 16.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFf1f3f7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          16.0,
                        ),
                        bottomLeft: Radius.circular(16.0),
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 24.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                              top: 16.0,
                              bottom: 16.0,
                            ),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFFe1e3e8),
                                ),
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    eventName,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                _buildIcon(context),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 16.0,
                              bottom: 16.0,
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    eventDetails,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0,
                                  ),
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          (isCurrent)
              ? Positioned.fill(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: leftColumnWidth - 5,
                      ),
                      width: 10.0,
                      height: 10.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          color: Theme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black38,
                              offset: Offset(0, 5.0),
                              blurRadius: 7.0,
                            ),
                          ]),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
