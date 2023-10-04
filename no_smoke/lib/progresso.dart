import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:no_smoke/home.dart';

class Progresso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Progresso Geral',
          style: TextStyle(
            fontFamily: 'Onest',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoCard(
              title: 'Economia',
              content: 'R\$ 100 economizados esse mês',
            ),
            _buildInfoCard(
              title: 'Qualidade de Vida',
              content: 'Melhoria na saúde geral',
            ),
            _buildInfoCard(
              title: 'Cigarros',
              content: 'Você deixou de fumar x cigarros esse mês',
            ),
            _buildChart(),
            // Add more elements as needed
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({required String title, required String content}) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Onest'),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  content,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChart() {
    List<BarChartGroupData> chartData = [
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(
            toY: 3,
            width: 15,
            color: Colors.blue,
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            toY: 2,
            width: 15,
            color: Colors.green,
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            toY: 4,
            width: 15,
            color: Colors.orange,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            toY: 3,
            width: 15,
            color: Colors.red,
          ),
        ],
      ),
      // Add more data as needed
    ];

    return Container(
      height: 200,
      child: BarChart(
        BarChartData(
          barGroups: chartData,
          titlesData: FlTitlesData(),
          borderData: FlBorderData(show: true),
        ),
      ),
    );
  }
}
