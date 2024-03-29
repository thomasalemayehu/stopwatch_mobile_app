import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../helpers.dart';
import '../state/stopwatch_timer.dart';

class StopwatchDisplay extends StatelessWidget {
  const StopwatchDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<StopwatchTimer>(builder: (context, model, child) {
      return DecoratedBox(
        key: const Key("stopwatchDisplay"),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 8.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
        child: SizedBox(
          width: 0.8.sw,
          height: 0.32.sh,
          child: Center(
              child: Text(
            Helper.formatDisplayTime(model.elapsed),
            key: const Key("stopwatchTimer"),
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(letterSpacing: 4, fontSize: 26.sp),
          )),
        ),
      );
    });
  }
}
