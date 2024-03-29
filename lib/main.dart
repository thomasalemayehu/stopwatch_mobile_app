import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';
import 'pages/stopwatch_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  const StopwatchApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MaterialApp(
        title: 'Stopwatch Application',
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: StopwatchAppConstantValues.backgroundColor,
          primaryColor: StopwatchAppConstantValues.primaryColor,
          textTheme: StopwatchAppConstantValues.textThemes,
        ),
        home: const StopwatchPage(),
      ),
    );
  }
}
