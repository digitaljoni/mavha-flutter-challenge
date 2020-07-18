import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateBoxWidget extends StatelessWidget {
  const DateBoxWidget(
    this.dateTime, {
    this.isSelected = false,
    key,
  }) : super(key: key);

  final bool isSelected;
  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 80) / 7;
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            4.0,
          ),
        ),
        color: isSelected ? Colors.white : Theme.of(context).primaryColorDark,
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              '${dateTime.day}',
              style: TextStyle(
                color: !isSelected
                    ? Colors.white
                    : Theme.of(context).primaryColorDark,
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Text(
              DateFormat('EEE').format(dateTime).toUpperCase(),
              style: TextStyle(
                color: !isSelected
                    ? Colors.white
                    : Theme.of(context).primaryColorDark,
                fontSize: 11.5,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
