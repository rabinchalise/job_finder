import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class JobLevel extends StatelessWidget {
  const JobLevel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Job  Level',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(color: Colors.black54, width: 1.5),
                      activeColor: kPrimaryColor,
                      value: false,
                      onChanged: (value) {}),
                  const Expanded(
                    child: Text(
                      'UI/UX Designer',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(color: Colors.black54, width: 1.5),
                      activeColor: kPrimaryColor,
                      value: false,
                      onChanged: (value) {}),
                  const Expanded(
                    child: Text(
                      overflow: TextOverflow.ellipsis,
                      'Flutter Developer',
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(color: Colors.black54, width: 1.5),
                      activeColor: kPrimaryColor,
                      value: true,
                      onChanged: (value) {}),
                  const Expanded(
                    child: Text(
                      'Web Developer',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      side: const BorderSide(color: Colors.black54, width: 1.5),
                      activeColor: kPrimaryColor,
                      value: false,
                      onChanged: (value) {}),
                  const Expanded(
                    child: Text(
                      'Graphic Designer',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
