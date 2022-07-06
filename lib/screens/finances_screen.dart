import '../utils/export.dart';

class FinancesScreen extends StatefulWidget {
  const FinancesScreen({Key? key}) : super(key: key);

  @override
  State<FinancesScreen> createState() => _FinancesScreenState();
}

class _FinancesScreenState extends State<FinancesScreen> {
  var select = 1;
  var colorButton = PaletteColor.primaryColor;
  var text = 'Efetuar pagamento';

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
                      text: 'Pagamentos pendentes',
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
                          Row(
                            children: [
                              Container(
                                width: width * 0.13,
                                child: RadioListTile(
                                  title: Text('Empresa'),
                                  value: 1,
                                  groupValue: select,
                                  activeColor: PaletteColor.primaryColor,
                                  onChanged: (val) {
                                    setState(() {
                                      select = val as int;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: width * 0.15,
                                child: RadioListTile(
                                  title: Text('Entregador'),
                                  value: 2,
                                  groupValue: select,
                                  activeColor: PaletteColor.primaryColor,
                                  onChanged: (val) {
                                    setState(() {
                                      select = val as int;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
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
                                  text: 'Valor',
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
                                    title: TextCustom(
                                      text: 'Nome da empresa ${index + 1}',
                                      size: 14.0,
                                      color: PaletteColor.grey,
                                    ),
                                    trailing: TextCustom(
                                      text: 'R\$ ${(index + 1) * 100},00',
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
                      text: 'Pagamentos efetuados',
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
                          Row(
                            children: [
                              Container(
                                width: width * 0.13,
                                child: RadioListTile(
                                  title: Text('Empresa'),
                                  value: 3,
                                  groupValue: select,
                                  activeColor: PaletteColor.primaryColor,
                                  onChanged: (val) {
                                    setState(() {
                                      select = val as int;
                                    });
                                  },
                                ),
                              ),
                              Container(
                                width: width * 0.15,
                                child: RadioListTile(
                                  title: Text('Entregador'),
                                  value: 4,
                                  groupValue: select,
                                  activeColor: PaletteColor.primaryColor,
                                  onChanged: (val) {
                                    setState(() {
                                      select = val as int;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
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
                            height: height * 0.3,
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
                                      text: 'Nome da empresa ${index + 1}',
                                      size: 14.0,
                                      color: PaletteColor.grey,
                                    ),
                                    trailing: TextCustom(
                                      text: 'R\$ ${(index + 1) * 100},00',
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
              padding: const EdgeInsets.only(top: 113.0, bottom: 40),
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: width*0.02, right: 10),
                            child: CircleAvatar(
                              radius: width*0.03,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 40.0),
                                child: Container(
                                  width: width * 0.17,
                                  padding: EdgeInsets.only(bottom: 12),
                                  child: TextCustom(
                                    text: 'Nome do Empresa',
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
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: width * 0.30,
                        padding: EdgeInsets.only(bottom: 12, top: 34),
                        child: TextCustom(
                          text: 'Dados bancários',
                          size: 14.0,
                        ),
                      ),
                      Container(
                        width: width * 0.30,
                        padding: EdgeInsets.only(bottom: 12),
                        child: TextCustom(
                          text: 'Banco Santander',
                          size: 14.0,
                          color: PaletteColor.grey,
                        ),
                      ),
                      Container(
                        width: width * 0.30,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 12, right: 25),
                              child: TextCustom(
                                text: 'Agência 000-0',
                                size: 14.0,
                                color: PaletteColor.grey,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 12),
                              child: TextCustom(
                                text: 'Conta 00000000-1',
                                size: 14.0,
                                color: PaletteColor.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Divider(
                        endIndent:  width*0.07,
                        indent:  width*0.07,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_left),
                          Container(
                            width: width * 0.07,
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: TextCustom(
                              text: 'Maio 2022',
                              size: 16.0,
                              fontWeight: FontWeight.bold,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                      SizedBox(height: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        width: width * 0.3,
                        height: height * 0.07,
                        color: PaletteColor.grey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextCustom(
                              text: 'Valor R\$ 350,00',
                              color: PaletteColor.white,
                              fontWeight: FontWeight.bold,
                            ),
                            ButtonCustom(
                                onPressed: (){
                                  setState(() {
                                    colorButton = PaletteColor.green;
                                    text = 'Pagamento Efetuado';
                                  });
                                },
                                text: text,
                                sizeText: 14.0,
                                colorButton: colorButton,
                                colorText: PaletteColor.white,
                                colorBorder: colorButton,
                                widthCustom: 0.1,
                                heightCustom: 0.05
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      TextCustom(
                        text: 'Histórico de venda no mês',
                        size: 16.0,
                        color: PaletteColor.grey,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 20),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: width*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: width*0.06,
                              child: TextCustom(
                                text: 'Pedido',
                                size: 12.0,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: width*0.07,
                              child: TextCustom(
                                text: 'Data',
                                size: 12.0,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: width*0.07,
                              child: TextCustom(
                                text: 'Valor',
                                size: 12.0,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: width*0.07,
                              child: TextCustom(
                                text: 'Taxa recebida',
                                size: 12.0,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        endIndent: 53,
                        indent: 53,
                      ),
                      Container(
                        height: height * 0.3,
                        child: ListView.separated(
                            separatorBuilder: (BuildContext context, int index) =>
                                SizedBox(height: 0),
                            itemCount: 12,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                onTap: () {},
                                title: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: width*0.08,
                                        child: TextCustom(
                                          text: 'N° ${index+1}',
                                          size: 14.0,
                                          color: PaletteColor.grey,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: width*0.07,
                                        child: TextCustom(
                                          text: '${index+1}/${index+1}/2022',
                                          size: 14.0,
                                          color: PaletteColor.grey,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: width*0.07,
                                        child: TextCustom(
                                          text: 'R\$ ${(index+1)*100},00',
                                          size: 14.0,
                                          color: PaletteColor.grey,
                                          textAlign: TextAlign.end,
                                        ),
                                      ),
                                      Container(
                                        width: width*0.07,
                                        child: TextCustom(
                                          text: 'R\$ ${(index+1)*10},00',
                                          size: 14.0,
                                          color: PaletteColor.grey,
                                          textAlign: TextAlign.end,
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
