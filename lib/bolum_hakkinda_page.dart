import 'package:flutter/material.dart';
import 'notification_page.dart';
import 'profile_page.dart';

class BolumHakkindaPage extends StatelessWidget {
  const BolumHakkindaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> akademisyenler = [
      {
        "isim": "Dr. Ayşe Yılmaz",
        "alan": "Yapay Zeka",
        "mail": "ayse.yilmaz@universite.edu.tr",
        "foto": "assets/hoca1.jpg",
      },
      {
        "isim": "Dr. Mehmet Can",
        "alan": "Cyber",
        "mail": "mehmet.can@universite.edu.tr",
        "foto": "assets/hoca2.jpg",
      },
      {
        "isim": "Prof. Ali Demir",
        "alan": "Veri Bilimi",
        "mail": "ali.demir@universite.edu.tr",
        "foto": "assets/hoca3.jpg",
      },
      {
        "isim": "Dr. Elif Korkmaz",
        "alan": "Ağ Güvenliği",
        "mail": "elif.korkmaz@universite.edu.tr",
        "foto": "assets/hoca4.jpg",
      },
      {
        "isim": "Doç. Burak Akın",
        "alan": "Yapay Zeka",
        "mail": "burak.akin@universite.edu.tr",
        "foto": "assets/hoca5.jpg",
      },
      {
        "isim": "Arş. Gör. Zeynep Arslan",
        "alan": "Cyber",
        "mail": "zeynep.arslan@universite.edu.tr",
        "foto": "assets/hoca6.jpg",
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Bölüm Hakkında",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.amber),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "AKADEMİSYENLER",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                          childAspectRatio: 0.9,
                        ),
                    itemCount: akademisyenler.length,
                    itemBuilder: (context, index) {
                      final hoca = akademisyenler[index];
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF800000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(hoca["foto"]!),
                              backgroundColor: Colors.grey[300],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              hoca["isim"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 4,
                                horizontal: 8,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Text(
                                hoca["alan"]!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              hoca["mail"]!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          // 🔽 Alt Menü
          Container(
            height: 65,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.black12, width: 1)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("🏠", style: TextStyle(fontSize: 28)),
                Text("💬", style: TextStyle(fontSize: 28)),
                Text("🎉", style: TextStyle(fontSize: 28)),
                Text("👥", style: TextStyle(fontSize: 28)),
                Text("💼", style: TextStyle(fontSize: 28)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
