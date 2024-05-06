import 'package:flutter/material.dart';
import 'package:job_finder/utils/colors.dart';

class SalaryRangeSlider extends StatefulWidget {
  const SalaryRangeSlider({super.key});

  @override
  State<SalaryRangeSlider> createState() => _SalaryRangeSliderState();
}

class _SalaryRangeSliderState extends State<SalaryRangeSlider> {
  double _minSalary = 50;
  double _maxSalary = 300;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20.0),
          RangeSlider(
            inactiveColor: Colors.grey.shade300,
            activeColor: kPrimaryColor,
            min: 0,
            max: 500,
            values: RangeValues(_minSalary, _maxSalary),
            onChanged: (RangeValues values) {
              setState(() {
                _minSalary = values.start;
                _maxSalary = values.end;
              });
            },
            divisions: 10,
            labels: RangeLabels(
              '\$${_minSalary.toStringAsFixed(0)}',
              '\$${_maxSalary.toStringAsFixed(0)}',
            ),
          ),
        ],
      ),
    );
  }
}
