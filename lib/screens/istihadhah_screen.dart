import 'package:flutter/material.dart';

class IstihadhahScreen extends StatelessWidget {
  const IstihadhahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Darah Istihadhah')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection('Definisi', 'Darah istihadhah adalah perdarahan abnormal di luar masa haid dan nifas, sering disebabkan gangguan hormon, infeksi, atau kelainan rahim.'),
            _buildSection('Ciri-Ciri', '• Tidak mengikuti siklus haid\n• Bisa terus-menerus atau tidak teratur\n• Tidak menyebabkan rasa tidak enak seperti haid\n• Tidak menghentikan masa subur'),
            _buildSection('Durasi', 'Tidak ada batas waktu tetap — bisa berhari-hari hingga berminggu-minggu.'),
            _buildSection('Catatan Penting', 'Dalam fikih, wanita istihadhah tetap wajib shalat dan puasa. Cukup berwudhu setiap kali akan shalat. Disarankan konsultasi ke dokter untuk diagnosis medis.'),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String judul, String isi) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(judul, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 6),
        Text(isi, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 16),
      ],
    );
  }
}