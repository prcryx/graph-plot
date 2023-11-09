import 'package:flutter/material.dart';

import 'charts/histogram.dart';

class DataPlotInterface extends StatefulWidget {
  const DataPlotInterface({super.key});

  @override
  State<DataPlotInterface> createState() => _DataPlotInterfaceState();
}

class _DataPlotInterfaceState extends State<DataPlotInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Graph Plot"),
      ),
      body: Column(
        children: const [
          Histogram(
              [85.0, 95.0, 88.0, 92.0, 100.0, 110.0, 92.0, 95.0, 105.0, 98.0])
        ],
      ),
    );
  }
}
