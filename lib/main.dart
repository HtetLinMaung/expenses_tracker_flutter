import 'package:flutter/material.dart';
import './components/TotalList.dart';

void main() => runApp(ExpensesTracker());

class ExpensesTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExpensesTrackerHome(),
    );
  }
}

class ExpensesTrackerHome extends StatefulWidget {
  @override
  _ExpensesTrackerHomeState createState() => _ExpensesTrackerHomeState();
}

class _ExpensesTrackerHomeState extends State<ExpensesTrackerHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: null,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.sync,
            ),
            onPressed: null,
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          TotalList(
            income: 0,
            expenses: 0,
            balance: 0,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _addExpense(context),
        backgroundColor: const Color(0xff00c4cc),
      ),
    );
  }

  void _addExpense(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute<void>(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black54,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Center(
          child: Text('hello'),
        ),
      );
    }));
  }
}
