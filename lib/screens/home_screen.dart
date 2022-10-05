import 'package:eos_hackover3/Theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../services/get_it_service.dart';
import '../services/navigation_service.dart';
import '../widgets/EventCard.dart';
import 'EventScreen.dart';

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
                Text("My Events", style: TextStyle(fontSize: 20)),
                EventCard(
                  imageUrl:
                      'https://raw.githubusercontent.com/PrerakGada/43_EnemiesOfSyntax_Hackover3.0/web/v_manage/src/assets/images/navratri.jpg',
                  title: 'Join the Jalsa',
                  date: '07/10/2022',
                  description: "Navratri is the \n wecwaecs erv..",
                  price: '\₹999',
                ),
                Text("Events For You", style: TextStyle(fontSize: 20)),
                EventCard(
                  imageUrl:
                      'https://raw.githubusercontent.com/PrerakGada/43_EnemiesOfSyntax_Hackover3.0/web/v_manage/src/assets/images/memory.jpg',
                  title: 'Super Memory Workshop',
                  date: '07/10/2022',
                  description:
                      "We at Super Mind Memory works \n wecwaecs erv..",
                  price: '\₹599',
                ),
                EventCard(
                  imageUrl:
                      'https://raw.githubusercontent.com/PrerakGada/43_EnemiesOfSyntax_Hackover3.0/web/v_manage/src/assets/images/tughlaq.jpg',
                  title: 'Tughlaq - A rehearsed reading',
                  date: '08/10/2022',
                  description:
                      "Avchetan Theatre presents a rehearsed reading of classical \n wecwaecs erv..",
                  price: '\₹1299',
                ),
                EventCard(
                  imageUrl:
                      'https://images.unsplash.com/photo-1523580494863-6f3031224c94?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
                  title: 'HackOver 3.0',
                  date: '09/10/2022',
                  description:
                      "A 24 hour techincal hackathon that \n wecwaecs erv..",
                  price: '\₹199',
                ),

                // (kIsWeb)
                //     ? Wrap(
                //         children: [
                //           Container(
                //             // color: AppColors.black,
                //             width: 150,
                //             height: 150,
                //             child: SfCircularChart(
                //               series: [
                //                 RadialBarSeries<ChartData, String>(
                //                     dataSource: chartData,
                //                     xValueMapper: (ChartData data, _) => data.x,
                //                     yValueMapper: (ChartData data, _) =>
                //                         data.y),
                //               ],
                //             ),
                //           ),
                //           Container(
                //             // color: AppColors.black,
                //             width: 150,
                //             height: 150,
                //             child: SfCircularChart(
                //               series: [
                //                 RadialBarSeries<ChartData, String>(
                //                     dataSource: chartData,
                //                     xValueMapper: (ChartData data, _) => data.x,
                //                     yValueMapper: (ChartData data, _) =>
                //                         data.y),
                //               ],
                //             ),
                //           ),
                //         ],
                //       )
                //     : Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Container(
                //             // color: AppColors.black,
                //             width: 150,
                //             height: 150,
                //             child: SfCircularChart(
                //               series: [
                //                 RadialBarSeries<ChartData, String>(
                //                     dataSource: chartData,
                //                     xValueMapper: (ChartData data, _) => data.x,
                //                     yValueMapper: (ChartData data, _) =>
                //                         data.y),
                //               ],
                //             ),
                //           ),
                //           Container(
                //             // color: AppColors.black,
                //             width: 150,
                //             height: 150,
                //             child: SfCircularChart(
                //               series: [
                //                 RadialBarSeries<ChartData, String>(
                //                     dataSource: chartData,
                //                     xValueMapper: (ChartData data, _) => data.x,
                //                     yValueMapper: (ChartData data, _) =>
                //                         data.y),
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
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
