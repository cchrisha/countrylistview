import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CountryListScreen(),
    );
  }
}

class CountryListScreen extends StatelessWidget {
  const CountryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Country> countries = [
      Country(
          flag: '🇺🇸',
          name: 'United States',
          continent: 'North America',
          language: 'English'),
      Country(
          flag: '🇨🇦',
          name: 'Canada',
          continent: 'North America',
          language: 'English/French'),
      Country(
          flag: '🇧🇷',
          name: 'Brazil',
          continent: 'South America',
          language: 'Portuguese'),
      Country(
          flag: '🇬🇧',
          name: 'United Kingdom',
          continent: 'Europe',
          language: 'English'),
      Country(
          flag: '🇫🇷',
          name: 'France',
          continent: 'Europe',
          language: 'French'),
      Country(
          flag: '🇩🇪',
          name: 'Germany',
          continent: 'Europe',
          language: 'German'),
      Country(
          flag: '🇯🇵', name: 'Japan', continent: 'Asia', language: 'Japanese'),
      Country(
          flag: '🇮🇳',
          name: 'India',
          continent: 'Asia',
          language: 'Hindi/English'),
      Country(
          flag: '🇦🇺',
          name: 'Australia',
          continent: 'Oceania',
          language: 'English'),
      Country(
          flag: '🇿🇦',
          name: 'South Africa',
          continent: 'Africa',
          language: 'Multiple'),
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country List'),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return CountryCard(country: countries[index]);
        },
      ),
    );
  }
}

class Country {
  final String flag;
  final String name;
  final String continent;
  final String language;

  Country({
    required this.flag,
    required this.name,
    required this.continent,
    required this.language,
  });
}

class CountryCard extends StatelessWidget {
  final Country country;

  const CountryCard({super.key, required this.country});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              country.flag,
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country.name,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                Text('Continent: ${country.continent}'),
                const SizedBox(height: 2.0),
                Text('Language: ${country.language}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
