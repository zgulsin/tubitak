import 'package:flutter/material.dart';
import 'notification_page.dart';

class CvPage extends StatelessWidget {
  const CvPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/profile.png'), // profil resmi
        ),
        centerTitle: true,
        title: const Text(
          "CV",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "✅ CV Hazırlarken Mutlaka Dikkat Edilmesi Gerekenler",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            buildItem(
              "1. Öz ve net olmalı",
              "Gereksiz uzun cümlelerden kaçın, sadece önemli bilgileri yaz.",
            ),
            buildItem(
              "2. Yazım ve imla hatası olmamalı",
              "CV’deki en küçük yazım hatası bile ciddiyetini zedeleyebilir.",
            ),
            buildItem(
              "3. Güncel bilgiler içermeli",
              "E-posta, telefon, mezuniyet yılı gibi bilgiler doğru ve güncel olmalı.",
            ),
            buildItem(
              "4. Tarih sırası tersten olmalı",
              "Deneyim, eğitim gibi alanlarda en güncel bilgi en üstte yer almalı.",
            ),
            buildItem(
              "5. Düzenli ve sade görünüm",
              "Karmaşık tasarım, fazla renk ve gereksiz grafik kullanma.",
            ),
            buildItem(
              "6. Gerçek bilgiler yer almalı",
              "Abartılı, doğrulanamaz şeyler yazma; gerekirse referans istenir.",
            ),
            buildItem(
              "7. Pozisyona göre özelleştirilmeli",
              "Her işe aynı CV’yi göndermek yerine başvurduğun pozisyona göre düzenleme yap.",
            ),
            buildItem(
              "8. Etkisiz bilgilerden kaçın",
              "TC kimlik no, medeni hal, doğum tarihi gibi bilgiler gerekmez.",
            ),
            buildItem(
              "9. Fotoğraf sadece gerekiyorsa",
              "Zorunlu değilse ekleme, ekleyeceksen profesyonel görün.",
            ),
            buildItem(
              "10. Başarı ve katkı odaklı anlatım",
              "“Yaptım” demek yerine “şu sonucu elde ettim” tarzında anlat.",
            ),
            const SizedBox(height: 40),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("🏠"),
                Text("💬"),
                Text("🎉"),
                Text("👥"),
                Text("💼"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: "$title\n",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: description),
          ],
        ),
      ),
    );
  }
}
