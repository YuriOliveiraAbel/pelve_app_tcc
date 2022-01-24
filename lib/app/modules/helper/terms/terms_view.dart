import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pelve_app/app/shared/components/button_component.dart';
import 'package:pelve_app/app/shared/utils/mock.dart';

class TermsView extends StatefulWidget {
  const TermsView({Key? key}) : super(key: key);

  @override
  _TermsViewState createState() => _TermsViewState();
}

class _TermsViewState extends State<TermsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    'TERMO DE CONCENTIMENTO DE LIVRE ESCLARECIDO',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF47525E),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    Mock.termsTxt,
                    style:
                        const TextStyle(fontSize: 14, color: Color(0xFF47525E)),
                  ),
                ],
              ),
            ),
          ),
          ButtonComponent(
            color: const Color(0xFFFFD4EC),
            text: 'Aceitar termos',
            heigth: 55,
            onTap: () {
              Modular.to.pop();
            },
          ),
        ],
      ),
    );
  }
}
