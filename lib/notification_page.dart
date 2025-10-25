import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const bordo = Color(0xFF6A0D25); 

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bildirimler',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: bordo),
        appBarTheme: const AppBarTheme(
          backgroundColor: bordo,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        useMaterial3: true,
      ),
      home: const NotificationPage(),
    );
  }
}

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<Map<String, dynamic>> notifications = [
    {
      "icon": "💬",
      "title": "Ahmet size bir mesaj gönderdi",
      "time": "5 dakika önce",
      "isRead": false,
    },
    {
      "icon": "🗓️",
      "title": "Etkinlik duyurusu: Networking Atölyesi\n9 Mayıs, 08:00",
      "isRead": false,
    },
    {
      "icon": "🎓",
      "title": "Yeni mentorluk talebi kabul edildi\nDün, 14:30",
      "isRead": false,
    },
    {
      "icon": "📝",
      "title": "Turkcell yeni iş ilanı yayınlandı\n10 Mayıs, 09:00",
      "isRead": false,
    },
  ];

  
  void markAllAsRead() {
    setState(() {
      for (var n in notifications) {
        n["isRead"] = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const bordo = Color(0xFF6A0D25);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bildirimler"),
        actions: [
           
          IconButton(
            icon: const Icon(Icons.notifications_active_rounded),
            tooltip: "Tümünü okundu olarak işaretle",
            onPressed: markAllAsRead,
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 60),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notif = notifications[index];
          final isRead = notif["isRead"] as bool;

          return GestureDetector(
            onTap: () {
              setState(() {
                notif["isRead"] = true;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: isRead
                    ? const Color(0xFFFBE9EC) 
                    : const Color(0xFFFADEE3), 
                border: Border.all(color: bordo.withOpacity(0.5), width: 1.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(notif["icon"], style: const TextStyle(fontSize: 28)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      notif["title"],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: isRead
                            ? FontWeight.normal
                            : FontWeight.w600,
                        color: isRead ? Colors.black54 : Colors.black87,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.only(bottom: 8), 
        child: Container(
          height: 60,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xFF6A0D25), width: 1.2),
            ),
            color: Colors.white,  sabit beyaz zemin
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("🏠", style: TextStyle(fontSize: 26)),
              Text("💬", style: TextStyle(fontSize: 26)),
              Text("🎉", style: TextStyle(fontSize: 26)),
              Text("👥", style: TextStyle(fontSize: 26)),
              Text("💼", style: TextStyle(fontSize: 26)),
            ],
          ),
        ),
      ),
    );
  }
}
