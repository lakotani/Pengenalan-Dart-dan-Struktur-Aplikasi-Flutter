import 'package:flutter/material.dart';
import '../models/student.dart';
import '../widgets/profile_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final Student student = Student(
    name: 'Christian Lakotani',
    nim: '23621103',
    prodi: 'Sistem Informasi',
    fakultas: 'Ilmu Komputer',
    univ: 'Universitas Yapis Papua',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background (boleh dihapus kalau tak pakai gambar)
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Kotak di tengah layar
          Center(child: ProfileCard(student: student)),
        ],
      ),
    );
  }
}
