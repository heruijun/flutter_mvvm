import 'package:flutter/material.dart';

enum OrderBy { up, down, none }

class SelectBarGroupWidget extends StatelessWidget {
  final List<SelectBarWidget> items;

  SelectBarGroupWidget(this.items);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, children: items);
  }
}

class SelectBarWidget extends StatelessWidget {
  final String title;
  final OrderBy orderBy;

  SelectBarWidget(this.title, this.orderBy);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(title,
              style: TextStyle(
                  fontSize: 15,
                  color: this.orderBy != OrderBy.none
                      ? Colors.red
                      : Colors.black87)),
          SizedBox(width: 5),
          Icon(Icons.arrow_upward,
              size: 12,
              color: this.orderBy == OrderBy.up ? Colors.red : Colors.black87),
          Icon(Icons.arrow_downward,
              size: 12,
              color:
                  this.orderBy == OrderBy.down ? Colors.red : Colors.black87),
        ],
      ),
      onTap: () {},
    );
  }
}
