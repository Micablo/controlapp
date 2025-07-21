import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  String _getCurrentMonthYear() {
    final now = DateTime.now();
    final formatter = DateFormat('MMMM / yyyy', 'es_ES');
    return formatter.format(now).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final currentDate = _getCurrentMonthYear();

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Inicio'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'INGRESOS'),
              Tab(text: 'EGRESOS'),
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              currentDate,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                children: [
                  _IngresosScreen(),
                  _EgresosScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IngresosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Aquí irán los ingresos'),
    );
  }
}

class _EgresosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Aquí irán los egresos'),
    );
  }
}
