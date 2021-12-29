import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Кейс-задание 2.3'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.contacts)),
            IconButton(
                tooltip: 'Почта', onPressed: () {}, icon: Icon(Icons.mail)),
            TextButton(
              onPressed: () {},
              child: Text('Профиль'),
              style: buttonStyle,
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts), label: 'Контакты'),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Почта'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Профиль'),
          ],
        ),
      ),
    );
  }
}
