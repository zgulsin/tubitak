import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil"), backgroundColor: Colors.grey),
      body: const Center(
        child: Text(
          "Profil sayfası daha sonra yapılacak ",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
