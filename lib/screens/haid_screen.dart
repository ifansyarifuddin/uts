// lib/screens/haid_screen.dart
import 'package:flutter/material.dart';

class HaidScreen extends StatelessWidget {
  const HaidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Darah Haid'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoCard(
              context,
              title: 'Definisi',
              content:
                  'Darah haid (menstruasi) adalah perdarahan alami yang terjadi akibat luruhnya dinding rahim (endometrium) ketika tidak terjadi pembuahan. Ini adalah bagian normal dari siklus reproduksi wanita.',
            ),
            const SizedBox(height: 16),
            _buildInfoCard(
              context,
              title: 'Ciri-Ciri Darah Haid',
              content:
                  '• Warna: Merah tua, coklat, atau kadang kehitaman\n'
                  '• Tekstur: Bisa cair atau menggumpal\n'
                  '• Bau: Sedikit anyir, tapi tidak menyengat\n'
                  '• Disertai gejala: Kram perut, nyeri punggung, mudah lelah',
            ),
            const SizedBox(height: 16),
            _buildInfoCard(
              context,
              title: 'Durasi Normal',
              content:
                  'Biasanya berlangsung **3–7 hari**.\n'
                  'Siklus normal: **21–35 hari**.\n'
                  'Jika kurang dari 3 hari atau lebih dari 7 hari, perlu dievaluasi lebih lanjut.',
            ),
            const SizedBox(height: 16),
            _buildInfoCard(
              context,
              title: 'Dalam Perspektif Fikih Islam',
              content:
                  '• Wanita haid **tidak boleh** shalat, puasa wajib, thawaf, atau berhubungan intim.\n'
                  '• Setelah darah berhenti dan masa suci tiba, **wajib mandi besar (mandi haid)**.\n'
                  '• Puasa yang ditinggalkan wajib diqadha, sedangkan shalat tidak perlu diqadha.',
            ),
            const SizedBox(height: 16),
            _buildInfoCard(
              context,
              title: 'Kapan Harus ke Dokter?',
              content:
                  '• Haid berlangsung >7 hari\n'
                  '• Siklus <21 hari atau >35 hari\n'
                  '• Nyeri hebat hingga mengganggu aktivitas\n'
                  '• Tidak haid selama 3 bulan (tanpa hamil)',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, {required String title, required String content}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: const TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}