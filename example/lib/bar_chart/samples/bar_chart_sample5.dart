import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BarChartSample5State();
}

class BarChartSample5State extends State<BarChartSample5> {
  final Color dark = const Color(0xff3b8c75);
  final Color normal = const Color(0xff64caad);
  final Color light = const Color(0xff73e8c9);

  static const double barWidth = 22;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.9,
      child: Card(
        elevation: 14,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white, //const Color(0xff020227),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
          child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text('Data', style: TextStyle(color: Colors.black, fontSize: 22.0),),
              //Icon(Icons.insert_chart, color: Colors.grey,),
              Icon(Icons.pie_chart, color: Colors.grey,)
            ],),),
            Padding(
          padding: const EdgeInsets.only(top: 26.0,),
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceBetween,
              maxY: 25,
              groupsSpace: 12,
              barTouchData: const BarTouchData(
                enabled: false,
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  textStyle: TextStyle(color: Colors.black, fontSize: 10),
                  margin: 10,
                  rotateAngle: 0,
                  getTitles: (double value) {
                    switch (value.toInt()) {
                      case 0:
                        return 'A';
                      case 1:
                        return 'B';
                      case 2:
                        return 'C';
                      case 3:
                        return 'D';
                      case 4:
                        return 'E';
                      default:
                        return '';
                    }
                  },
                ),
                leftTitles: SideTitles(
                  showTitles: true,
                  textStyle: TextStyle(color: Colors.black, fontSize: 10),
                  rotateAngle: 0,
                  getTitles: (double value) {
                    if (value == 0) {
                      return '';
                    }
                    return '${value.toInt()}';
                  },
                  interval: 5,
                  margin: 8,
                  reservedSize: 30,
                ),
                rightTitles: SideTitles(
                  showTitles: true,
                  textStyle: TextStyle(color: Colors.white, fontSize: 10),
                  rotateAngle: 90,
                  getTitles: (double value) {
                    if (value == 0) {
                      return '';
                    }
                    return '';
                  },
                  interval: 5,
                  margin: 8,
                  reservedSize: 10,
                ),
              ),
              gridData: FlGridData(
                show: true,
                checkToShowHorizontalLine: (value) => value % 5 == 0,
                getDrawingHorizontalLine: (value) {
                  if (value == 0) {
                    return const FlLine(color: Color(0xff363753), strokeWidth: 3);
                  }
                  return const FlLine(
                    color: Color(0xff2a2747),
                    strokeWidth: 0.8,
                    dashArray: [5, 10],
                  );
                },
              ),
              borderData: FlBorderData(
                show: false,
              ),
              barGroups: [
                const BarChartGroupData(
                  x: 0,
                  barRods: [
                    BarChartRodData(
                      color: Color.fromRGBO(18, 12, 146, 1),
                      y: 15.1,
                      width: barWidth,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      rodStackItem: [
                        // BarChartRodStackItem(0, 2, Color(0xff2bdb90)),
                        // BarChartRodStackItem(2, 5, Color(0xffffdd80)),
                        // BarChartRodStackItem(5, 7.5, Color(0xffff4d94)),
                        // BarChartRodStackItem(7.5, 15.5, Color(0xff19bfff)),
                      ],
                    ),
                  ],
                ),
                const BarChartGroupData(
                  x: 1,
                  barRods: [
                    BarChartRodData(
                      color: Color.fromRGBO(35, 75, 144, 1),
                      y: 14,
                      width: barWidth,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      rodStackItem: [
                        // BarChartRodStackItem(0, 1.8, Color(0xff2bdb90)),
                        // BarChartRodStackItem(1.8, 4.5, Color(0xffffdd80)),
                        // BarChartRodStackItem(4.5, 7.5, Color(0xffff4d94)),
                        // BarChartRodStackItem(7.5, 14, Color(0xff19bfff)),
                      ],
                    ),
                  ],
                ),
                const BarChartGroupData(
                  x: 2,
                  barRods: [
                    BarChartRodData(
                      color: Color.fromRGBO(68, 50, 41, 1),
                      y: 13,
                      width: barWidth,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      rodStackItem: [
                        // BarChartRodStackItem(0, 1.5, Color(0xff2bdb90)),
                        // BarChartRodStackItem(1.5, 3.5, Color(0xffffdd80)),
                        // BarChartRodStackItem(3.5, 7, Color(0xffff4d94)),
                        // BarChartRodStackItem(7, 13, Color(0xff19bfff)),
                      ],
                    ),
                  ],
                ),
                const BarChartGroupData(
                  x: 3,
                  barRods: [
                    BarChartRodData(
                      color: Color.fromRGBO(195, 78, 42, 1),
                      y: 13.5,
                      width: barWidth,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      rodStackItem: [
                        // BarChartRodStackItem(0, 1.5, Color(0xff2bdb90)),
                        // BarChartRodStackItem(1.5, 3, Color(0xffffdd80)),
                        // BarChartRodStackItem(3, 7, Color(0xffff4d94)),
                        // BarChartRodStackItem(7, 13.5, Color(0xff19bfff)),
                      ],
                    ),
                  ],
                ),
                const BarChartGroupData(
                  x: 4,
                  barRods: [
                    BarChartRodData(
                      color: Color.fromRGBO(193, 54, 27, 1),
                      y: 18,
                      width: barWidth,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      rodStackItem: [
                        // BarChartRodStackItem(0, 2, Color(0xff2bdb90)),
                        // BarChartRodStackItem(2, 4, Color(0xffffdd80)),
                        // BarChartRodStackItem(4, 9, Color(0xffff4d94)),
                        // BarChartRodStackItem(9, 18, Color(0xff19bfff)),
                      ],
                    ),
                  ],
                ),
                // const BarChartGroupData(
                //   x: 5,
                //   barRods: [
                //     BarChartRodData(
                //       y: 17,
                //       width: barWidth,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(6),
                //           topRight: Radius.circular(6)),
                //       rodStackItem: [
                //         // BarChartRodStackItem(0, 1.2, Color(0xff2bdb90)),
                //         // BarChartRodStackItem(1.2, 2.7, Color(0xffffdd80)),
                //         // BarChartRodStackItem(2.7, 7, Color(0xffff4d94)),
                //         // BarChartRodStackItem(7, 17, Color(0xff19bfff)),
                //       ],
                //     ),
                //   ],
                // ),
                // const BarChartGroupData(
                //   x: 6,
                //   barRods: [
                //     BarChartRodData(
                //       y: 16,
                //       width: barWidth,
                //       borderRadius: BorderRadius.only(
                //           topLeft: Radius.circular(6),
                //           topRight: Radius.circular(6)),
                //       rodStackItem: [
                //         // BarChartRodStackItem(0, 1.2, Color(0xff2bdb90)),
                //         // BarChartRodStackItem(1.2, 6, Color(0xffffdd80)),
                //         // BarChartRodStackItem(6, 11, Color(0xffff4d94)),
                //         // BarChartRodStackItem(11, 17, Color(0xff19bfff)),
                //       ],
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        ],
        )
      ),
    );
  }
}
