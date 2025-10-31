import 'package:flutter/material.dart';

class NifasScreen extends StatelessWidget {
  const NifasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Darah Nifas')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection('Definisi', 'Darah nifas adalah darah yang keluar setelah melahirkan, akibat proses pelepasan sisa jaringan plasenta dan pemulihan rahim.'),
            _buildSection('Ciri-Ciri', '• Warna: Awalnya merah terang, lalu berubah jadi kecoklatan\n• Durasi: Bisa berlangsung hingga 40 hari\n• Volume: Paling banyak pada 1–3 hari pertama'),
            _buildSection('Durasi Normal', 'Maksimal 40 hari (menurut mayoritas ulama). Jika berhenti sebelum itu, wanita sudah suci.'),
            _buildSection('Catatan Penting', 'Hukumnya sama seperti haid: tidak boleh shalat/berpuasa. Jika darah berhenti sebelum 40 hari, boleh mandi besar dan kembali ibadah.'),
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