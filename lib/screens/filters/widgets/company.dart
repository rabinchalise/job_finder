import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class Company extends StatelessWidget {
  const Company({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Company',
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
                      'Apple',
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
                      'Google',
                      overflow: TextOverflow.ellipsis,
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
                      'Microsoft',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
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
                      value: true,
                      onChanged: (value) {}),
                  const Expanded(
                    child: Text(
                      'Comcast',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
