import 'package:flutter/material.dart';

class TotalList extends StatelessWidget {
  final int income;
  final int expenses;
  final int balance;

  TotalList({this.income, this.expenses, this.balance});

  @override
  Widget build(BuildContext context) {
    Widget horizontalDivider = Container(
      height: 25,
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(width: .25, color: Colors.black),
          right: BorderSide(width: .25, color: Colors.black),
        ),
      ),
    );

    return Card(
      margin: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _createColumn('Income', income),
            horizontalDivider,
            _createColumn('Expenses', expenses),
            horizontalDivider,
            _createColumn('Balance', balance),
          ],
        ),
      ),
    );
  }

  Widget _createColumn(String title, int amount) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            title,
            style: TextStyle(fontSize: 14),
          ),
          margin: const EdgeInsets.only(bottom: 5),
        ),
        Text(
          amount.toString(),
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
