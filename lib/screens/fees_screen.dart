import 'package:flutter/widgets.dart';

import '../utils/export.dart';

class FeesScreen extends StatefulWidget {
  const FeesScreen({Key? key}) : super(key: key);

  @override
  State<FeesScreen> createState() => _FeesScreenState();
}

class _FeesScreenState extends State<FeesScreen> {
  var _controllerKm = TextEditingController();
  var _controllerFeesDelivery = TextEditingController();
  var _controllerFeesProduct = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: PaletteColor.greyLight,
        ),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 64.0, left: 64, bottom: 16),
          child: Container(
            width: width,
            child: TextCustom(
              text: 'Taxas',
              size: 24.0,
              fontWeight: FontWeight.bold,
              color: PaletteColor.grey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 64),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              width: width * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextCustom(
                    text: 'Frete',
                    size: 16.0,
                    fontWeight: FontWeight.bold,
                    color: PaletteColor.grey,
                  ),
                  SizedBox(height: 10),
                  TextCustom(
                    text: 'Reais por Km',
                    size: 14.0,
                  ),
                  Input(
                    controller: _controllerKm,
                    hint: 'R\$ 1,00',
                    fontSize: 14.0,
                    keyboardType: TextInputType.number,
                    width: width * 0.1,
                    colorBorder: PaletteColor.greyLight,
                    background: PaletteColor.greyLight,
                  ),
                  SizedBox(height: 20),
                  TextCustom(
                    text: 'Taxa cobrada por entrega',
                    size: 14.0,
                    fontWeight: FontWeight.bold,
                    color: PaletteColor.grey,
                  ),
                  Input(
                    controller: _controllerFeesDelivery,
                    hint: '20 %',
                    fontSize: 14.0,
                    keyboardType: TextInputType.number,
                    width: width * 0.1,
                    colorBorder: PaletteColor.greyLight,
                    background: PaletteColor.greyLight,
                  ),
                  SizedBox(height: 20),
                  TextCustom(
                    text: 'Taxa cobrada por produto vendido',
                    size: 14.0,
                    fontWeight: FontWeight.bold,
                    color: PaletteColor.grey,
                  ),
                  Input(
                    controller: _controllerFeesProduct,
                    hint: '20 %',
                    fontSize: 14.0,
                    keyboardType: TextInputType.number,
                    width: width * 0.1,
                    colorBorder: PaletteColor.greyLight,
                    background: PaletteColor.greyLight,
                  ),
                  SizedBox(height: 40),
                  ButtonCustom(
                      onPressed: (){},
                      text: 'Salvar',
                      sizeText: 14.0,
                      colorButton: PaletteColor.primaryColor,
                      colorText: PaletteColor.white,
                      colorBorder: PaletteColor.primaryColor,
                      widthCustom: 0.15,
                      heightCustom: 0.05
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
