import '../utils/export.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  final listMount = ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
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
                    text: 'Entregadores pendentes de autorização',
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
                                text: 'Nome',
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
                                    text: 'Nome ${index+1}',
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
                    text: 'Entregadores cadastrados',
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
                            text: 'Entregadores',
                            size: 16.0,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: height * 0.4,
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
                                    text: 'Nome ${index+1}',
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: CircleAvatar(
                            radius: 70,
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
                                  text: 'Nome do Entregador',
                                  size: 16.0,
                                  color: PaletteColor.grey,
                                  fontWeight: FontWeight.bold,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Container(
                              width: width * 0.2,
                              padding: EdgeInsets.only(bottom: 12),
                              child: TextCustom(
                                text: 'CPF 000.000.000-00',
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
                              width: width * 0.2,
                              padding: EdgeInsets.only(bottom: 12),
                              child: TextCustom(
                                text:
                                'Rua Aparecida Godoi, 111, Vila Mariana\nSão Paulo/SP',
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: TextCustom(
                                text: 'Foto da CNH',
                                size: 14.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                color: PaletteColor.greyInput,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.camera_alt,color: PaletteColor.white,size: 50,),
                            ),
                            ButtonCustom(
                                onPressed: (){},
                                text: 'Recusar entregador',
                                sizeText: 14.0,
                                colorButton: PaletteColor.red,
                                colorText: PaletteColor.white,
                                colorBorder: PaletteColor.red,
                                widthCustom: 0.1,
                                heightCustom: 0.05
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: TextCustom(
                                text: 'Foto do rosto',
                                size: 14.0,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: PaletteColor.greyInput,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Icon(Icons.camera_alt,color: PaletteColor.white,size: 50,),
                            ),
                            ButtonCustom(
                                onPressed: (){},
                                text: 'Aprovar entregador',
                                sizeText: 14.0,
                                colorButton: PaletteColor.green,
                                colorText: PaletteColor.white,
                                colorBorder: PaletteColor.green,
                                widthCustom: 0.1,
                                heightCustom: 0.05
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16,),
                    Divider(endIndent: 53,indent: 53,),
                    Container(
                      width: width * 0.2,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: TextCustom(
                        text: 'Histórico de Entregas',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextCustom(
                          text: 'Mês',
                          size: 14.0,
                        ),
                        TextCustom(
                          text: 'N° de pedidos',
                          size: 14.0,
                        ),
                        TextCustom(
                          text: 'Total de frete',
                          size: 14.0,
                        ),
                        TextCustom(
                          text: 'Taxa recebida',
                          size: 14.0,
                        ),
                      ],
                    ),
                    Divider(endIndent: 53,indent: 53,),
                    Container(
                      height: height * 0.2,
                      child: ListView.separated(
                          separatorBuilder:
                              (BuildContext context, int index) =>
                              SizedBox(height: 0),
                          itemCount: 12,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              onTap: () {},
                              title: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      width: 70,
                                      child: TextCustom(
                                        text: listMount[index],
                                        size: 14.0,
                                        color: PaletteColor.grey,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 90),
                                      child: TextCustom(
                                        text: '30',
                                        size: 14.0,
                                        color: PaletteColor.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 120),
                                      child: TextCustom(
                                        text: 'R\$ 600,00',
                                        size: 14.0,
                                        color: PaletteColor.grey,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 100),
                                      child: TextCustom(
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
    );
}
}

