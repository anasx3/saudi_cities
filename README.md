
// الصفحة الرئيسية
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مدن السعودية',
      theme: ThemeData(
        primaryColor: Colors.green,
        hintColor: Colors.brown,
        // ignore: prefer_const_constructors
        textTheme: TextTheme(
          displayLarge: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: const TextStyle(fontSize: 16, color: Colors.black),
        ),
      ),
      home: CitiesScreen(),
    );
  }
}

// شاشة المدن
class CitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مدن السعودية'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد الأعمدة
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0, // نسبة العرض للطول
        ),
        itemCount: cities.length,
        itemBuilder: (context, index) {
          City city = cities[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CityDetailScreen(city: city)),
              );
            },
            child: Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_city, size: 50), // أيقونة المدينة
                  const SizedBox(height: 10),
                  Text(
                    city.name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// شاشة تفاصيل المدينة
class CityDetailScreen extends StatelessWidget {
  final City city;

  CityDetailScreen({required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text('لبسهم: ${city.traditionalClothing.join(", ")}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('الأكلات المشهورة: ${city.food.join(", ")}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('عادات أهلها: ${city.customs.join(", ")}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Text('المعالم المعروفة:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: city.famousLandmarks.map((landmark) => Text('- $landmark')).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
