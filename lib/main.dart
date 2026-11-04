import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 50,
            color: Colors.indigo,
            fontStyle: FontStyle.italic,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          primary: Colors.lightGreen,
          seedColor: Colors.teal,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const int _minimum = 0;
  static const int _maximum = 10;

  int counter = 0;

  void _incrementCounter() {
    if (counter >= _maximum) {
      return;
    }

    setState(() {
      counter++;
    });

    if (counter == _maximum) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Limite maximale atteinte !')),
      );
    }
  }

  void _decrementCounter() {
    if (counter <= _minimum) {
      return;
    }

    setState(() {
      counter--;
    });
  }

  bool get _isPrime {
    if (counter < 2) {
      return false;
    }

    for (var divisor = 2; divisor * divisor <= counter; divisor++) {
      if (counter % divisor == 0) {
        return false;
      }
    }
    return true;
  }

  String get _counterLabel {
    if (_isPrime) {
      return 'Nombre Premier';
    }
    return counter.isEven ? 'Nombre Pair' : 'Nombre Impair';
  }

  @override
  Widget build(BuildContext context) {
    final counterColor = counter.isEven ? Colors.green : Colors.orange;
    final counterTextStyle = Theme.of(context).textTheme.displayLarge!
        .copyWith(fontSize: 50 + (counter * 4), color: counterColor);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 126, 7, 245),
        title: Text(
          'Counter Application',
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'La valeur du compteur est ==>$counter',
              style: counterTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              _counterLabel,
              style: TextStyle(
                color: counterColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: counter == _maximum ? null : _incrementCounter,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 300),
          FloatingActionButton(
            onPressed: counter == _minimum ? null : _decrementCounter,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
