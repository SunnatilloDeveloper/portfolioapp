import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/animated_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          persentage: 0.6,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          persentage: 0.65,
          label: "Phyton",
        ),
      ],
    );
  }
}


