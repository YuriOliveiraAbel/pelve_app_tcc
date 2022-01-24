import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pelve_app/app/shared/components/button_component.dart';
import 'package:pelve_app/app/shared/components/text_field_component.dart';
import 'package:pelve_app/app/shared/utils/constraints.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, backgroundColor: kPrimaryColor),
      backgroundColor: kPrimaryColor,
      body: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'PELVE APP',
                  style: TextStyle(
                    fontFamily: "Oswald",
                    fontWeight: FontWeight.w400,
                    fontSize: 87,
                    color: Colors.white,
                    letterSpacing: 0.35,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Text(
                'Olá, bem vinda!\nPor favor\ncrie sua conta.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Oswald",
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white,
                  letterSpacing: 0.35,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              TextFieldComponent(
                controller: TextEditingController(),
                erroText: '',
                hintColor: Colors.grey,
                hintText: 'Digite seu nome',
                isErro: false,
                keyBoardType: TextInputType.text,
                textColor: Colors.black,
                inputAction: TextInputAction.next,
                submit: (_) {},
                radius: 25,
                heigth: 52,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TextFieldComponent(
                controller: TextEditingController(),
                erroText: '',
                hintColor: Colors.grey,
                hintText: 'Digite Telefone',
                isErro: false,
                keyBoardType: TextInputType.text,
                textColor: Colors.black,
                inputAction: TextInputAction.next,
                submit: (_) {},
                radius: 25,
                heigth: 52,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              TextFieldComponent(
                controller: TextEditingController(),
                erroText: '',
                hintColor: Colors.grey,
                hintText: 'Digite uma senha',
                isErro: false,
                keyBoardType: TextInputType.text,
                textColor: Colors.black,
                inputAction: TextInputAction.next,
                submit: (_) {},
                radius: 25,
                heigth: 52,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06),
              ButtonComponent(
                color: const Color(0xFFFFD4EC),
                text: 'Próximo',
                heigth: 55,
                onTap: () {
                  Modular.to.pushReplacementNamed('/helper/');
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
