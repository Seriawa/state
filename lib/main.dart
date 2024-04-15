import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Счетчик',
            ),
          ),
          backgroundColor: Color.fromARGB(255, 4, 0, 105),
        ),
        body: Counter(),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  double _counter1 = 0;
  double _counter2 = 0;
  double otvet = 0;

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _decrementCounter1() {
    setState(() {
      _counter1--;
    });
  }

  void _decrementCounter2() {
    setState(() {
      _counter2--;
    });
  }

  void _nullCounter1() {
    setState(() {
      _counter1 = 0;
    });
  }

  void _nullCounter2() {
    setState(() {
      _counter2 = 0;
    });
  }

  void _plus() {
    setState(() {
      otvet = _counter1 + _counter2;
    });
  }

  void _minus() {
    setState(() {
      otvet = _counter1 - _counter2;
    });
  }

  void _umnozh() {
    setState(() {
      otvet = _counter1 * _counter2;
    });
  }

  void _delit() {
    setState(() {
      otvet = _counter1 / _counter2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_counter1',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  width: 110,
                ),
                Text(
                  '$_counter2',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ]),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _decrementCounter1,
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _incrementCounter1,
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _decrementCounter2,
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _incrementCounter2,
              ),
            ],
          ),
        ),
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                    onPressed: _nullCounter1,
                    child: const Text('Обнулиться 1',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)))),
                const SizedBox(
                  width: 50,
                ),
                TextButton(
                    onPressed: _nullCounter2,
                    child: const Text('Обнулиться 2',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))))
              ]),
        ),
        Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                    onPressed: _plus,
                    child: Text('+'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 4, 0, 105))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: _minus,
                    child: Text('-'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 4, 0, 105))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: _umnozh,
                    child: Text('*'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 4, 0, 105))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: _delit,
                    child: Text('/'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 4, 0, 105)))
              ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          child: Text(
            'Ответ: $otvet',
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w900),
          ),
        ),
      ]),
    );
  }
}
