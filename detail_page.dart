import 'package:flutter/material.dart';
import 'vehicle_data.dart';

class DetailPage extends StatelessWidget {
  final Vehicle vehicle;
  const DetailPage({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(vehicle.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            vehicle.imageUrls.isNotEmpty
                ? Image.network(vehicle.imageUrls[0], height: 180, fit: BoxFit.cover)
                : Container(height: 180, color: Colors.grey),
            const SizedBox(height: 16),
            Text(vehicle.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(vehicle.type, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text('Mesin: ${vehicle.engine}'),
            Text('Bahan Bakar: ${vehicle.fuelType}'),
            Text('Harga: ${vehicle.price}'),
            const SizedBox(height: 12),
            Text(vehicle.description),
            const SizedBox(height: 12),
            // Tampilkan gambar lain jika ada
            if (vehicle.imageUrls.length > 1)
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: vehicle.imageUrls.length,
                  itemBuilder: (context, idx) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Image.network(vehicle.imageUrls[idx], width: 100, fit: BoxFit.cover),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
