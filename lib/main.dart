import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubes_mdp/components/apiprovider.dart';
import 'package:tubes_mdp/screens/splash.dart';

void main() {
  runApp(Tubes());
}

class Tubes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => DetailProvider())
      ],
      child: MaterialApp(
        title: 'Valorant Weapon',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Splash(),
        },
      ),
    );
  }
}
