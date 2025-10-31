// lib/widgets/darah_card.dart
import 'package:flutter/material.dart';

class DarahCard extends StatelessWidget {
  final String judul;
  final IconData ikon;
  final VoidCallback onTap;
  final Color backgroundColor; // ← tambahkan parameter warna

  const DarahCard({
    super.key,
    required this.judul,
    required this.ikon,
    required this.onTap,
    required this.backgroundColor, // ← terima warna
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: backgroundColor, // ← terapkan warna latar
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Icon(
                ikon,
                size: 48,
                color: Colors.white, // ikon jadi putih agar kontras
              ),
              const SizedBox(height: 12),
              Text(
                judul,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // teks juga putih
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}