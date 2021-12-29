import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/mail': (context) => MailScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}

Widget navDrawer(context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Container(
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: SvgPicture.network(
                          'https://upload.wikimedia.org/wikipedia/commons/4/44/Google-flutter-logo.svg'),
                    ),
                  ],
                ),
              )),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Главный экран'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.mail),
            title: Text('Почта'),
            onTap: () {
              Navigator.pushNamed(context, '/mail');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Профиль'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          Divider(),
        ],
      ),
    );

Widget bottomNavBar(context) => BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.home)),
            label: 'Главный экран'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mail');
                },
                icon: Icon(Icons.mail)),
            label: 'Почта'),
        BottomNavigationBarItem(
            icon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                icon: Icon(Icons.person)),
            label: 'Профиль'),
      ],
    );

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Главный экран')),
        appBar: AppBar(
          title: Text(
            'Главный экран',
            style: TextStyle(fontSize: 16),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.home)),
            IconButton(
                tooltip: 'Почта',
                onPressed: () {
                  Navigator.pushNamed(context, '/mail');
                },
                icon: Icon(Icons.mail)),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Профиль'),
              style: buttonStyle,
            )
          ],
        ),
        drawer: navDrawer(context),
        bottomNavigationBar: bottomNavBar(context),
      ),
    );
  }
}

class MailScreen extends StatefulWidget {
  const MailScreen({Key? key}) : super(key: key);

  @override
  _MailScreenState createState() => _MailScreenState();
}

class _MailScreenState extends State<MailScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Почта')),
        appBar: AppBar(
          title: Text(
            'Почта',
            style: TextStyle(fontSize: 16),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.home)),
            IconButton(
                tooltip: 'Почта',
                onPressed: () {
                  Navigator.pushNamed(context, '/mail');
                },
                icon: Icon(Icons.mail)),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Профиль'),
              style: buttonStyle,
            )
          ],
        ),
        drawer: navDrawer(context),
        bottomNavigationBar: bottomNavBar(context),
      ),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Профиль')),
        appBar: AppBar(
          title: Text(
            'Профиль',
            style: TextStyle(fontSize: 16),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(Icons.home)),
            IconButton(
                tooltip: 'Почта',
                onPressed: () {
                  Navigator.pushNamed(context, '/mail');
                },
                icon: Icon(Icons.mail)),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: Text('Профиль'),
              style: buttonStyle,
            )
          ],
        ),
        drawer: navDrawer(context),
        bottomNavigationBar: bottomNavBar(context),
      ),
    );
  }
}
