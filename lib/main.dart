import 'package:flutter/material.dart';
import './screens/add_place_screen.dart';
import './screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import './providers/places.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: "GreatePlaces",
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {AddPlaceScreen.routeName: (ctx) => AddPlaceScreen()},
      ),
    );
    //
  }
}
