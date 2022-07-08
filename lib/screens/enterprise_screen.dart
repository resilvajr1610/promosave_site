import 'package:flutter/widgets.dart';

import '../utils/export.dart';

class EnterpriseScreen extends StatefulWidget {
  const EnterpriseScreen({Key? key}) : super(key: key);

  @override
  State<EnterpriseScreen> createState() => _EnterpriseScreenState();
}

class _EnterpriseScreenState extends State<EnterpriseScreen> {

  final listMount = ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'];
  FirebaseFirestore db = FirebaseFirestore.instance;
  var _allResultsWaiting = [];
  var _allResultsApproved = [];
  String urlPhotoProfileFire='';
  String nameFire = '';
  String cnpjFire = '';
  String emailFire = '';
  String phoneFire = '';
  String addressFire = '';
  String typeFire = '';
  String cityFire = '';
  String idUserFire = '';
  String statusFire = '';

  dataWaiting()async{
    var data = await db.collection("enterprise").where('type', isEqualTo: TextConst.ENTERPRISE).where('status',isEqualTo: TextConst.WAITING).get();

    setState(() {
      _allResultsWaiting = data.docs;
    });
  }
  dataApproved()async{
    var data = await db.collection("enterprise").where('type', isEqualTo: TextConst.ENTERPRISE).where('status',isEqualTo: TextConst.APPROVED).get();

    setState(() {
      _allResultsApproved = data.docs;
    });
  }

  @override
  void initState() {
    super.initState();
    dataWaiting();
    dataApproved();
  }

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
                            child: _allResultsWaiting.length == 0
                                ?Center(
                                  child: TextCustom(
                                    text: 'Nenhuma empresa aguardando ser aprovada ; )',
                                    color: PaletteColor.grey,
                                  )
                                )
                                : ListView.separated(
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        SizedBox(height: 5),
                                itemCount: _allResultsWaiting.length,
                                itemBuilder: (BuildContext context, int index) {

                                  DocumentSnapshot item = _allResultsWaiting[index];
                                  String urlPhotoProfile = ErrorListModel(item,'urlPhotoProfile');
                                  String name = ErrorListModel(item,'name');
                                  String cnpj = ErrorListModel(item,'cpf');
                                  String email = ErrorListModel(item,'email');
                                  String phone = ErrorListModel(item,'phone');
                                  String address = ErrorListModel(item,'address');
                                  String type = ErrorListModel(item,'type');
                                  String city = ErrorListModel(item,'city');
                                  String idUser = ErrorListModel(item,'idUser');
                                  String status = ErrorListModel(item,'status');

                                    return ListTile(
                                      onTap: () {
                                        setState(() {
                                          nameFire = name;
                                          cnpjFire = cnpj;
                                          emailFire = email;
                                          phoneFire = phone;
                                          addressFire = address;
                                          typeFire = type;
                                          cityFire = city;
                                          urlPhotoProfileFire = urlPhotoProfile;
                                          idUserFire = idUser;
                                          statusFire = status;
                                        });
                                      },
                                      leading: CircleAvatar(
                                        radius: 40,
                                        backgroundColor: PaletteColor.grey,
                                        backgroundImage: NetworkImage(
                                          urlPhotoProfile!=""?urlPhotoProfile:TextConst.LOGO,
                                        ),
                                      ),
                                      trailing: TextCustom(
                                        text: '25/05/2022',
                                        size: 14.0,
                                        color: PaletteColor.grey,
                                      ),
                                      title: TextCustom(
                                        text: name,
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
                                itemCount: _allResultsApproved.length,
                                itemBuilder: (BuildContext context, int index) {

                                  DocumentSnapshot item = _allResultsApproved[index];
                                  String urlPhotoProfile = ErrorListModel(item,'urlPhotoProfile');
                                  String name = ErrorListModel(item,'name');
                                  String cnpj = ErrorListModel(item,'cpf');
                                  String email = ErrorListModel(item,'email');
                                  String phone = ErrorListModel(item,'phone');
                                  String address = ErrorListModel(item,'address');
                                  String type = ErrorListModel(item,'type');
                                  String city = ErrorListModel(item,'city');
                                  String idUser = ErrorListModel(item,'idUser');
                                  String status = ErrorListModel(item,'status');

                                  return ListTile(
                                    onTap: () {
                                      setState(() {
                                        nameFire = name;
                                        cnpjFire = cnpj;
                                        emailFire = email;
                                        phoneFire = phone;
                                        addressFire = address;
                                        typeFire = type;
                                        cityFire = city;
                                        urlPhotoProfileFire = urlPhotoProfile;
                                        idUserFire = idUser;
                                        statusFire = status;
                                      });
                                    },
                                    leading: CircleAvatar(
                                      radius: 40,
                                      backgroundColor: PaletteColor.grey,
                                      backgroundImage: NetworkImage(
                                        urlPhotoProfile!=""?urlPhotoProfile:TextConst.LOGO,
                                      ),
                                    ),
                                    title: TextCustom(
                                      text: item['name'],
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
                              backgroundColor: PaletteColor.primaryColor,
                              backgroundImage: NetworkImage(
                                urlPhotoProfileFire!=""?urlPhotoProfileFire:TextConst.LOGO,
                              ),
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
                                    text: nameFire,
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
                                  text: cnpjFire,
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: width * 0.2,
                                padding: EdgeInsets.only(bottom: 12),
                                child: TextCustom(
                                  text: emailFire,
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                width: width * 0.2,
                                padding: EdgeInsets.only(bottom: 12),
                                child: TextCustom(
                                  text: phoneFire,
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: width * 0.17,
                                child: TextCustom(
                                  text:addressFire,
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
                                  text:cityFire,
                                  size: 14.0,
                                  color: PaletteColor.grey,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      statusFire!= TextConst.WAITING?Container(): Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonCustom(
                              onPressed: ()=>AlertModel().alert('Aviso !', 'Você deseja realmente recusar essa empresa?', PaletteColor.grey, PaletteColor.grey, context,
                              [
                                ButtonCustom(
                                  onPressed: ()=>Navigator.pop(context),
                                  text: 'Não',
                                  widthCustom: 0.1,
                                  heightCustom: 0.05,
                                  colorBorder: PaletteColor.red,
                                  colorButton: PaletteColor.red,
                                  colorText: PaletteColor.white,
                                  sizeText: 14.0,
                                ),
                                ButtonCustom(
                                  onPressed: (){
                                    db.collection('enterprise').doc(idUserFire).update({
                                      'status' : TextConst.REFUSED
                                    }).then((value) => Navigator.pushReplacementNamed(context, '/navigation'));
                                  },
                                  text: 'Sim',
                                  widthCustom: 0.1,
                                  heightCustom: 0.05,
                                  colorBorder: PaletteColor.green,
                                  colorButton: PaletteColor.green,
                                  colorText: PaletteColor.white,
                                  sizeText: 14.0,
                                ),
                              ]),
                              text: 'Recusar empresa',
                              sizeText: 14.0,
                              colorButton: PaletteColor.red,
                              colorText: PaletteColor.white,
                              colorBorder: PaletteColor.red,
                              widthCustom: 0.1,
                              heightCustom: 0.05
                          ),
                          ButtonCustom(
                              onPressed: ()=>AlertModel().alert('Aviso !', 'Você deseja realmente aceitar essa empresa?', PaletteColor.grey, PaletteColor.grey, context,
                                  [
                                    ButtonCustom(
                                      onPressed: ()=>Navigator.pop(context),
                                      text: 'Não',
                                      widthCustom: 0.1,
                                      heightCustom: 0.05,
                                      colorBorder: PaletteColor.red,
                                      colorButton: PaletteColor.red,
                                      colorText: PaletteColor.white,
                                      sizeText: 14.0,
                                    ),
                                    ButtonCustom(
                                      onPressed: (){
                                        db.collection('enterprise').doc(idUserFire).update({
                                          'status' : TextConst.APPROVED
                                        }).then((value) => Navigator.pushReplacementNamed(context, '/navigation'));
                                      },
                                      text: 'Sim',
                                      widthCustom: 0.1,
                                      heightCustom: 0.05,
                                      colorBorder: PaletteColor.green,
                                      colorButton: PaletteColor.green,
                                      colorText: PaletteColor.white,
                                      sizeText: 14.0,
                                    ),
                                  ]),
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
