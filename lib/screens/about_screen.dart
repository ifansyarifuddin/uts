import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Aplikasi')),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.pinkAccent,
                child: Icon(Icons.female, size: 60, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Mengenal Macam-Macam Darah Wanita',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Aplikasi edukasi ini membantu wanita memahami perbedaan antara darah haid, nifas, dan istihadhah dari segi medis dan hukum Islam.',
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              'Tujuan:\n• Meningkatkan literasi kesehatan reproduksi\n• Menghindari kesalahan ibadah karena ketidaktahuan\n• Mendorong konsultasi ke tenaga medis bila perlu',
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Dibuat oleh:\n[Nama Anda]\nMahasiswa [Program Studi]\n[Universitas]\n\n© 2025 - Untuk Tugas Akhir / UAS',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}