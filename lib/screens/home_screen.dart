// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../widgets/darah_card.dart';
import 'haid_screen.dart';
import 'nifas_screen.dart';
import 'istihadhah_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mengenal Darah Wanita'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Jenis-Jenis Darah Wanita',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Gunakan Expanded agar tidak overflow
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                shrinkWrap: false,
                physics: const ScrollPhysics(), // biarkan scrollable jika banyak konten
                childAspectRatio: 0.9,
                children: [
                  DarahCard(
                   judul: 'Darah Haid',
                   ikon: Icons.opacity,
                   backgroundColor: Colors.redAccent.shade200, // merah muda
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => HaidScreen())),
              ),
                  DarahCard(
                   judul: 'Darah Nifas',
                   ikon: Icons.child_care,
                   backgroundColor: Colors.purple.shade200, // ungu lembut
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => NifasScreen())),
  ),
                  DarahCard(
                   judul: 'Istihadhah',
                   ikon: Icons.warning_amber,
                   backgroundColor: Colors.orange.shade200, // oranye hangat
                   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => IstihadhahScreen())),
  ),
],
                
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'ℹ️ Catatan:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              'Aplikasi ini menggabungkan perspektif medis dan fikih Islam untuk edukasi kesehatan reproduksi wanita.',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}