import 'package:flutter/material.dart';
import 'package:kkumap/pages/autocomplete_location_page.dart';

import 'pages/place_autocomplete_page.dart';
import 'pages/places_nearby_page.dart';
import 'widgets/custom_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '졸업작품',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: const Text(
            'kku',
            style: TextStyle(
                fontFamily: 'NanumBrushScript',
                fontSize: 20,
                color: Colors.white),
          ),
          centerTitle: true),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/aa.png'),
              CustomButton(
                title: '이곳어때?',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const PlacesNearbyPage()),
                  );
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                title: '장소검색',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const PlaceAutocompletePage();
                    }),
                  );
                },
              ),
              const SizedBox(height: 20),
              CustomButton(
                title: '장소정보',
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return const AutocompleteLocationPage();
                    }),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
