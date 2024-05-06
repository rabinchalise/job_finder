import 'package:flutter/material.dart';
import 'package:job_finder/common/back_arrow.dart';
import 'package:job_finder/common/custom_appbar.dart';
import 'package:job_finder/screens/filters/widgets/salary_range.dart';
import 'package:job_finder/utils/extension.dart';
import 'widgets/company.dart';
import 'widgets/job_level.dart';
import 'widgets/working_model.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> location = [
      {'value': '1', 'label': 'United States'},
      {'value': '2', 'label': 'Nepal'},
      {'value': '3', 'label': 'Japan'},
      {'value': '4', 'label': 'India'},
      {'value': '5', 'label': 'China'},
      {'value': '6', 'label': 'United Kingdom'}
    ];

    final List<Map<String, String>> sortBy = [
      {'value': '1', 'label': 'Most Recent'},
      {'value': '2', 'label': '2 Days Ago'},
      {'value': '3', 'label': '3 Days Ago'},
      {'value': '4', 'label': '1 Weeks Ago'},
      {'value': '5', 'label': '4 Weeks Ago'}
    ];

    final List<Map<String, String>> jobNature = [
      {'value': '1', 'label': 'Full Time'},
      {'value': '2', 'label': 'Freelance'},
    ];

    return Scaffold(
      appBar: const CustomAppbar(
        leading: BackArrow(),
        title: Text(
          'Search By Filters',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Location',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                8.0.verticalSpacer,
                DropdownMenu(
                  expandedInsets: const EdgeInsets.only(right: 0),
                  hintText: 'Select An Country',
                  dropdownMenuEntries: location
                      .map<DropdownMenuEntry<String>>((data) =>
                          DropdownMenuEntry(
                              value: data['value'].toString(),
                              label: data['label'].toString()))
                      .toList(),
                ),
                16.0.verticalSpacer,
                const Text(
                  'Sort By',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                8.0.verticalSpacer,
                DropdownMenu(
                  hintText: 'Select An Date',
                  expandedInsets: const EdgeInsets.only(right: 0),
                  dropdownMenuEntries: sortBy
                      .map<DropdownMenuEntry<String>>((data) =>
                          DropdownMenuEntry(
                              value: data['value'].toString(),
                              label: data['label'].toString()))
                      .toList(),
                ),
                16.0.verticalSpacer,
                const Text(
                  'Job  Nature',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                8.0.verticalSpacer,
                DropdownMenu(
                    hintText: 'Select Job Type',
                    expandedInsets: const EdgeInsets.only(right: 0),
                    dropdownMenuEntries: jobNature
                        .map<DropdownMenuEntry<String>>((data) =>
                            DropdownMenuEntry(
                                value: data['value'].toString(),
                                label: data['label'].toString()))
                        .toList()),
                24.0.verticalSpacer,
                const JobLevel(),
                24.0.verticalSpacer,
                const WorkingModel(),
                24.0.verticalSpacer,
                const Company(),
                24.0.verticalSpacer,
                const Text(
                  'Salary  Range',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                8.0.verticalSpacer,
                const SalaryRangeSlider(),
                24.0.verticalSpacer,
                Row(
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text('Reset Filter'))),
                    16.0.horizontalSpacer,
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Apply Filter')))
                  ],
                )
              ],
            ),
          )),
    );
  }
}
