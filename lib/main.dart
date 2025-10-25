import 'package:flutter/material.dart';
import 'notification_page.dart'; // Eğer dosya adın farklıysa, burayı güncelle.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bildirim Uygulaması',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const NotificationPage(),
    );
  }
}
