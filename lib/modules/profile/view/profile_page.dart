import 'package:flutter/material.dart';
import 'package:yulia/modules/profile/view/widgets/data_field.dart';
import 'package:yulia/modules/profile/view/widgets/gender.dart';
import 'package:yulia/modules/profile/view/widgets/header.dart';
import 'package:yulia/modules/profile/view/widgets/photo.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 50.0),
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Header(),
            const SizedBox(height: 5.0),
            Photo(),
            const DataField('Ваше Имя', "Куцай Юлия Александровна"),
            const SizedBox(height: 20.0),
            const DataField("Дата Рождения", "22.02.1975"),
            const SizedBox(height: 20.0),
            const DataField("Должность", "Менеджер"),
            const SizedBox(height: 20.0),
            const DataField("Заработок", "30000"),
            const SizedBox(height: 20.0),
            Gender(),
          ],
        ),
      ),
    );
  }
}
