import 'package:flutter/widgets.dart';

import '../utils/export.dart';

class EnterpriseScreen extends StatefulWidget {
  const EnterpriseScreen({Key? key}) : super(key: key);

  @override
  State<EnterpriseScreen> createState() => _EnterpriseScreenState();
}

class _EnterpriseScreenState extends State<EnterpriseScreen> {

  final listMount = ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: PaletteColor.greyLight,
      ),
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 64.0, left: 64, bottom: 16),
                  child: Container(
                    width: width * 0.4,
                    child: TextCustom(
                      text: 'Empresas pendentes de autorização',
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
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextCustom(
                                  text: 'Empresa',
                                  size: 16.0,
                                ),
                                TextCustom(
                                  text: 'Cadastro',
                                  size: 16.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: height * 0.2,
                            child: ListView.separated(
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        SizedBox(height: 5),
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    onTap: () {},
                                    leading: CircleAvatar(
                                      radius: 40,
                                    ),
                                    trailing: TextCustom(
                                      text: '25/05/2022',
                                      size: 14.0,
                                      color: PaletteColor.grey,
                                    ),
                                    title: TextCustom(
                                      text: 'Nome da Empresa',
                                      size: 14.0,
                                      color: PaletteColor.grey,
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 64.0, bottom: 16, left: 64),
                  child: Container(
                    width: width * 0.4,
                    child: TextCustom(
                      text: 'Empresas cadastradas',
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
                      width: width * 0.3,
                      child: Column(
                        children: [
                          Container(
                            width: width,
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: TextCustom(
                              text: 'Empresa',
                              size: 16.0,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: height * 0.45,
                            child: ListView.separated(
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        SizedBox(height: 5),
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    onTap: () {},
                                    leading: CircleAvatar(
                                      radius: 40,
                                    ),
                                    title: TextCustom(
                                      text: 'Nome da Empresa',
                                      size: 14.0,
                                      color: PaletteColor.grey,
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 113.0,bottom: 40),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  width: width * 0.35,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(width*0.02),
                            child: CircleAvatar(
                              radius: width*0.05,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Container(
                                  width: width * 0.2,
                                  padding: EdgeInsets.only(bottom: 12),
                                  child: TextCustom(
                                    text: 'Nome da Empresa',
                                    size: 16.0,
                                    color: PaletteColor.grey,
                                    fontWeight: FontWeight.bold,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                width: width * 0.17,
                                padding: EdgeInsets.only(bottom: 12),
                                child: TextCustom(
                                  text: 'CNPJ 000.000.000/0000-00',
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: width * 0.2,
                                padding: EdgeInsets.only(bottom: 12),
                                child: TextCustom(
                                  text: 'empresa@gmail.com',
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: width * 0.2,
                                padding: EdgeInsets.only(bottom: 12),
                                child: TextCustom(
                                  text: '(11) 2122-2222',
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: width * 0.17,
                                child: TextCustom(
                                  text:'Rua Aparecida Godoi, 111, Vila Mariana',
                                  maxLines: 2,
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: width * 0.17,
                                padding: EdgeInsets.only(bottom: 12),
                                child: TextCustom(
                                  text:'São Paulo/SP',
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonCustom(
                              onPressed: (){},
                              text: 'Recusar empresa',
                              sizeText: 14.0,
                              colorButton: PaletteColor.red,
                              colorText: PaletteColor.white,
                              colorBorder: PaletteColor.red,
                              widthCustom: 0.1,
                              heightCustom: 0.05
                          ),
                          ButtonCustom(
                              onPressed: (){},
                              text: 'Aprovar empresa',
                              sizeText: 14.0,
                              colorButton: PaletteColor.green,
                              colorText: PaletteColor.white,
                              colorBorder: PaletteColor.green,
                              widthCustom: 0.1,
                              heightCustom: 0.05
                          ),
                        ],
                      ),
                      SizedBox(height: 16,),
                      Divider(endIndent: 53,indent: 53,),
                      Container(
                        width: width * 0.2,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: TextCustom(
                          text: 'Histórico de vendas',
                          size: 16.0,
                          color: PaletteColor.grey,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        width: 105,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: PaletteColor.greyInput)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextCustom(
                              text: '2022',
                              size: 14.0,
                              color: PaletteColor.grey,
                            ),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*0.03),
                        child: Row(
                          children: [
                            Container(
                              width: width*0.08,
                              child: TextCustom(
                                textAlign: TextAlign.center,
                                text: 'Mês',
                                size: 12.0,
                              ),
                            ),
                            Container(
                              width: width*0.07,
                              child: TextCustom(
                                textAlign: TextAlign.center,
                                text: 'N° de pedidos',
                                size: 12.0,
                              ),
                            ),
                            Container(
                              width: width*0.07,
                              child: TextCustom(
                                textAlign: TextAlign.center,
                                text: 'Total de vendas',
                                size: 12.0,
                              ),
                            ),
                            Container(
                              width: width*0.07,
                              child: TextCustom(
                                textAlign: TextAlign.center,
                                text: 'Taxa recebida',
                                size: 12.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(endIndent: 53,indent: 53,),
                      Container(
                        height: height * 0.35,
                        child: ListView.separated(
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                SizedBox(height: 0),
                            itemCount: 12,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                onTap: () {},
                                title: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: width*0.01),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: width*0.01),
                                        width: width*0.08,
                                        child: TextCustom(
                                          text: listMount[index],
                                          size: 14.0,
                                          color: PaletteColor.grey,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: width*0.07,
                                        child: TextCustom(
                                          textAlign: TextAlign.center,
                                          text: '30',
                                          size: 14.0,
                                          color: PaletteColor.grey,
                                        ),
                                      ),
                                      Container(
                                        width: width*0.07,
                                        child: TextCustom(
                                          textAlign: TextAlign.center,
                                          text: 'R\$ 600,00',
                                          size: 14.0,
                                          color: PaletteColor.grey,
                                        ),
                                      ),
                                      Container(
                                        width: width*0.07,
                                        child: TextCustom(
                                          textAlign: TextAlign.center,
                                          text: 'R\$ 100,00',
                                          size: 14.0,
                                          color: PaletteColor.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
