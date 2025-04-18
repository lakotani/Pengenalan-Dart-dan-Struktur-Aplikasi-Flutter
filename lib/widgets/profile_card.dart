import 'package:flutter/material.dart';
import '../models/student.dart';

class ProfileCard extends StatelessWidget {
  final Student student;

  const ProfileCard({super.key, required this.student});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.95),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Foto profil bundar
          CircleAvatar(
            radius: 85,
            backgroundImage: AssetImage('assets/chris.jpg'),
          ),
          const SizedBox(height: 16),
          // Biodata
          Text(
            student.name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text('NPM: ${student.nim}', style: const TextStyle(fontSize: 16)),
          Text(
            'Jurusan: ${student.prodi}',
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            'Fakultas: ${student.fakultas}',
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            'Universitas: ${student.univ}',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
