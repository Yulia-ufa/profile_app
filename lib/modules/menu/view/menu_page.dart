import 'package:flutter/material.dart';
import 'package:yulia/modules/menu/view/widgets/data.dart';
import 'package:yulia/modules/menu/view/widgets/division.dart';
import 'package:yulia/modules/menu/view/widgets/help.dart';
import 'package:yulia/modules/menu/view/widgets/person.dart';

class MenuPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0),
        child: Column(
          children: [
            Person(),
            const SizedBox(height: 20.0),
            Division(),
            const SizedBox(height: 30.0),
            const Data(
              text: "Персональные данные",
              icon: Icons.perm_identity,
            ),
            const SizedBox(height: 20.0),
            const Data(
              text: 'Настройки',
              icon: Icons.settings,
            ),
            const SizedBox(height: 20.0),
            const Data(
              text: 'Электронное Заявление',
              icon: Icons.description,
            ),
            const SizedBox(height: 10.0),
            Division(),
            const SizedBox(height: 30.0),
            const Data(
              text: 'Реферальный Код',
              icon: Icons.favorite,
            ),
            const SizedBox(height: 20.0),
            const Data(
              text: 'Часто задаваемые вопросы',
              icon: Icons.pending,
            ),
            const SizedBox(height: 20.0),
            const Data(
              text: 'Наш справочник',
              icon: Icons.drive_file_rename_outline,
            ),
            const SizedBox(height: 20.0),
            const Data(
              text: 'Сообщество',
              icon: Icons.groups,
            ),
            const SizedBox(height: 20.0),
            const Help(
              icon: Icons.ac_unit,
              text: 'Мы рады Вам помочь',
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
