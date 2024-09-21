import 'package:flutter/material.dart';

// تعريف كلاس City
class City {
  final String name;
  final List<String> traditionalClothing;
  final List<String> food;
  final List<String> customs;
  final List<String> famousLandmarks;

  City({
    required this.name,
    required this.traditionalClothing,
    required this.food,
    required this.customs,
    required this.famousLandmarks,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      name: json['name'],
      traditionalClothing: List<String>.from(json['traditional_clothing']),
      food: List<String>.from(json['food']),
      customs: List<String>.from(json['customs']),
      famousLandmarks: List<String>.from(json['famous_landmarks']),
    );
  }
}

// قائمة المدن
List<City> cities = [
  City(
    name: 'الرياض',
    traditionalClothing: ['الثوب', 'الشماغ', 'العقال'],
    food: ['الكبسة', 'الجريش', 'القرصان'],
    customs: ['الضيافة', 'المجالس', 'القهوة السعودية'],
    famousLandmarks: ['برج المملكة', 'برج الفيصلية', 'المتحف الوطني', 'قصر المصمك', 'حديقة الملك عبدالله', 'وادي حنيفة'],
  ),
  City(
    name: 'مكة المكرمة',
    traditionalClothing: ['الثوب', 'الإحرام'],
    food: ['المنتو', 'السليق', 'المعصوب'],
    customs: ['الضيافة', 'استقبال الحجاج'],
    famousLandmarks: ['المسجد الحرام', 'الكعبة المشرفة', 'غار حراء', 'جبل النور', 'غار ثور', 'أبراج البيت'],
  ),
  City(
    name: 'المدينة المنورة',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['التميس', 'الحيسة', 'الفول المديني'],
    customs: ['استقبال الزوار', 'إكرام الحجاج'],
    famousLandmarks: ['المسجد النبوي', 'جبل أحد', 'مسجد قباء', 'البقيع', 'متحف دار المدينة'],
  ),
  City(
    name: 'جدة',
    traditionalClothing: ['الثوب', 'الغترة'],
    food: ['السليق', 'السمبوسة', 'المنتو'],
    customs: ['الضيافة', 'احتفالات الزواج التقليدية'],
    famousLandmarks: ['كورنيش جدة', 'نافورة الملك فهد', 'البلد', 'واجهة جدة البحرية'],
  ),
  City(
    name: 'الدمام',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['السمك المشوي', 'المندي', 'المضغوط'],
    customs: ['المجالس التقليدية', 'الصيد'],
    famousLandmarks: ['كورنيش الدمام', 'جزيرة المرجان', 'شاطئ نصف القمر'],
  ),
  City(
    name: 'الخبر',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['الكبسة', 'السمك المشوي', 'المطبق'],
    customs: ['الضيافة', 'الرحلات البحرية'],
    famousLandmarks: ['كورنيش الخبر', 'جسر الملك فهد', 'شاطئ العزيزية'],
  ),
  City(
    name: 'الطائف',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['السليق', 'المفطح', 'الفتة'],
    customs: ['الاحتفال بموسم الورد الطائفي', 'الضيافة'],
    famousLandmarks: ['منتزه الردف', 'سوق عكاظ', 'قصر شبرا'],
  ),
  City(
    name: 'أبها',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['العصيدة', 'المرقوق', 'المعصوب'],
    customs: ['استقبال الزوار', 'الاحتفال بموسم عسير'],
    famousLandmarks: ['الجبل الأخضر', 'منتزه عسير الوطني', 'قرية المفتاحة'],
  ),
  City(
    name: 'ينبع',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['المندي', 'السمبوسة', 'المعصوب'],
    customs: ['الضيافة', 'الصيد'],
    famousLandmarks: ['كورنيش ينبع', 'الشاطئ السياحي', 'مرسى القوارب'],
  ),
  City(
    name: 'حائل',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['الكبسة', 'القرصان', 'الحنيني'],
    customs: ['الضيافة', 'الاحتفالات المحلية'],
    famousLandmarks: ['جبل السمراء', 'قلعة أعيرف', 'وادي الدير'],
  ),
  City(
    name: 'نجران',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['المعصوب', 'المندي', 'الحنيني'],
    customs: ['الضيافة', 'احتفالات الأعياد'],
    famousLandmarks: ['قصر الإمارة التاريخي', 'سد نجران', 'جبل رعوم'],
  ),
  City(
    name: 'تبوك',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['المندي', 'السليق', 'الكبسة'],
    customs: ['الضيافة', 'الرحلات البرية'],
    famousLandmarks: ['قلعة تبوك', 'وادي الديسة', 'جبل اللوز'],
  ),
  City(
    name: 'جازان',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['المندي', 'الحنيذ', 'المرسة'],
    customs: ['الضيافة', 'احتفالات الحصاد'],
    famousLandmarks: ['جبال فيفا', 'جزيرة فرسان', 'وادي لجب'],
  ),
  City(
    name: 'الباحة',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['القرصان', 'العصيدة', 'السليق'],
    customs: ['الضيافة', 'الاحتفال بالمناسبات'],
    famousLandmarks: ['منتزه رغدان', 'قرية ذي عين', 'جبل شدا الأعلى'],
  ),
  City(
    name: 'القصيم',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['الكبسة', 'المرقوق', 'الجريش'],
    customs: ['الضيافة', 'الاحتفالات المحلية'],
    famousLandmarks: ['متحف بريدة', 'منتزه الحاجب', 'برج بريدة'],
  ),
  City(
    name: 'عرعر',
    traditionalClothing: ['الثوب', 'الشماغ'],
    food: ['المندي', 'الكبسة', 'المعصوب'],
    customs: ['الضيافة', 'الرحلات الصحراوية'],
    famousLandmarks: ['منتزه بدنة', 'وادي عرعر', 'متحف عرعر']
  )
];


void main() {
  runApp(MyApp());
}

// الصفحة الرئيسية
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مدن السعودية',
      theme: ThemeData(
        primaryColor: Colors.green,
        hintColor: Colors.brown,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
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
        title: Text('مدن السعودية'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                  Icon(Icons.location_city, size: 50), // أيقونة المدينة
                  SizedBox(height: 10),
                  Text(
                    city.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
            Text('لبسهم: ${city.traditionalClothing.join(", ")}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('الأكلات المشهورة: ${city.food.join(", ")}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('عادات أهلها: ${city.customs.join(", ")}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('المعالم المعروفة:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
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
