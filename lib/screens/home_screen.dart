import '../utils/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  FirebaseFirestore db = FirebaseFirestore.instance;

  int enterprises = 0;
  int deliverys = 0;
  int clients = 0;
  int requests = 0;
  int foods = 0;

  _data()async{
    QuerySnapshot<Map<String, dynamic>> snapshotClients = await db.collection("user").get();
    QuerySnapshot<Map<String, dynamic>> snapshotFoods = await db.collection('products').get();
    QuerySnapshot<Map<String, dynamic>> snapshotDeliverys = await db.collection("enterprise").where('type',isEqualTo: TextConst.DELIVERYMAN).get();
    QuerySnapshot<Map<String, dynamic>> snapshotEnterprises = await db.collection("enterprise").where('type',isEqualTo: TextConst.ENTERPRISE).get();

    setState(() {
      clients = snapshotClients.docs.length;
      deliverys = snapshotDeliverys.docs.length;
      enterprises = snapshotEnterprises.docs.length;
      foods = snapshotFoods.docs.length;
    });
  }

  @override
  void initState() {
    super.initState();
    _data();
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return width> 600?SafeArea(
      child: Center(
        child: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: height*0.1),
          SizedBox(
            height: height*0.25,
            width: width*0.15,
            child:Image.asset("assets/image/logo_light.png"),
          ),
          SizedBox(height: height*0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleHome(
                text: 'Empresas\ncadastradas',
                number: enterprises,
              ),
              SizedBox(width: width*0.05),
              TitleHome(
                text: 'Entregadores\ncadastrados',
                number: deliverys,
              ),
              SizedBox(width: width*0.05),
              TitleHome(
                text: 'Clientes\ncadastrados',
                number: clients,
              ),
            ],
          ),
          SizedBox(height: height*0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleHome(
                text: 'Pedidos\nrealizados',
                number: requests,
              ),
              SizedBox(width: width*0.05),
              TitleHome(
                text: 'Alimentos\nsalvos',
                number: foods,
              ),
            ],
          )
        ],
      ),),
    ):Image.asset("assets/image/logo_light.png",width: 50,fit: BoxFit.fitWidth,);
  }
}
