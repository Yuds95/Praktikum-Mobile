import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Map<String, dynamic> vehicle;
  const DetailPage({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vehicle['name'])),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: ${vehicle['name']}", style: const TextStyle(fontSize: 18)),
            Text("Tipe: ${vehicle['type']}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            Text("Deskripsi:", style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(vehicle['description'] ?? "Tidak ada deskripsi"),
          ],
        ),
      ),
    );
  }
}
