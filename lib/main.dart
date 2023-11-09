import 'package:flutter/material.dart';
import 'package:graph_plot/presentation/theme/custom_theme.dart';

import 'presentation/app/data_plot_interface.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'graph-plot',
      theme: CustomColorTheme.getTheme(),
      home: const DataPlotInterface(),
    );
  }
}
