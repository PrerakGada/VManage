import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<ChartData> chartData = [
    ChartData('David', 25),
    ChartData('Steve', 38),
    ChartData('Jack', 34),
    ChartData('Others', 52)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                (kIsWeb)
                    ? Wrap(
                        children: [
                          Container(
                            // color: AppColors.black,
                            width: 150,
                            height: 150,
                            child: SfCircularChart(
                              series: [
                                RadialBarSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) =>
                                        data.y),
                              ],
                            ),
                          ),
                          Container(
                            // color: AppColors.black,
                            width: 150,
                            height: 150,
                            child: SfCircularChart(
                              series: [
                                RadialBarSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) =>
                                        data.y),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            // color: AppColors.black,
                            width: 150,
                            height: 150,
                            child: SfCircularChart(
                              series: [
                                RadialBarSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) =>
                                        data.y),
                              ],
                            ),
                          ),
                          Container(
                            // color: AppColors.black,
                            width: 150,
                            height: 150,
                            child: SfCircularChart(
                              series: [
                                RadialBarSeries<ChartData, String>(
                                    dataSource: chartData,
                                    xValueMapper: (ChartData data, _) => data.x,
                                    yValueMapper: (ChartData data, _) =>
                                        data.y),
                              ],
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);

  final String x;
  final double y;
}
