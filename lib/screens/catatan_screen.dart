// lib/screens/catatan_screen.dart
import 'package:flutter/material.dart';

class CatatanScreen extends StatelessWidget {
  const CatatanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catatan Darah Wanita')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              context, // ← tambahkan context di sini
              'Catatan untuk Darah Haid',
              '• Catat tanggal mulai dan selesai haid setiap bulan.\n'
              '• Jika siklus tidak teratur >3 bulan, konsultasi ke dokter.\n'
              '• Gunakan pembalut bersih dan ganti tiap 4-6 jam.\n'
              '• Hindari mandi air dingin saat haid jika mudah kram.',
            ),
            const SizedBox(height: 20),
            _buildSection(
              context, // ← tambahkan context
              'Catatan untuk Istihadhah',
              '• Istihadhah bukan haid, jadi shalat dan puasa tetap wajib.\n'
              '• Cukup berwudhu sebelum shalat, meskipun darah keluar.\n'
              '• Segera periksa ke dokter jika darah tidak berhenti >40 hari.\n'
              '• Bisa disebabkan oleh polip, mioma, atau gangguan hormon.',
            ),
            const SizedBox(height: 20),
            _buildSection(
              context, // ← tambahkan context
              'Tips Umum',
              '• Jaga pola makan sehat dan hindari stres.\n'
              '• Olahraga ringan membantu melancarkan siklus.\n'
              '• Dokumentasikan gejala dan durasi untuk konsultasi medis.',
            ),
          ],
        ),
      ),
    );
  }

  // ✅ Tambahkan parameter `BuildContext context`
  Widget _buildSection(BuildContext context, String judul, String isi) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              judul,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor, // ✅ sekarang context tersedia
              ),
            ),
            const SizedBox(height: 8),
            Text(
              isi,
              style: const TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}