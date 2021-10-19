import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yulia/modules/profile/state/profile_state.dart';

class Gender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileState>(
      init: ProfileState(),
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Пол",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 5.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    state.setGender(true);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    alignment: Alignment.centerLeft,
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                      color: getMaleColor(state.gender),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text('Мужчина'),
                  ),
                ),
                const SizedBox(width: 20.0),
                GestureDetector(
                  onTap: () {
                    state.setGender(false);
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    alignment: Alignment.centerLeft,
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                      color: getFemaleColor(state.gender),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text('Женщина'),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Color getMaleColor(bool gender) {
    if (gender == true) {
      return Colors.red;
    }
    return const Color(0xFFf1f3fd);
  }

  Color getFemaleColor(bool gender) {
    if (gender == false) {
      return Colors.red;
    }
    return const Color(0xFFf1f3fd);
  }
}
