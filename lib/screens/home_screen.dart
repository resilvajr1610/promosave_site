import '../utils/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return width> 600?SafeArea(
      child: Center(
        child: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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
                number: 15,
              ),
              SizedBox(width: width*0.05),
              TitleHome(
                text: 'Entregadores\ncadastrados',
                number: 10,
              ),
              SizedBox(width: width*0.05),
              TitleHome(
                text: 'Clientes\ncadastrados',
                number: 110,
              ),
            ],
          ),
          SizedBox(height: height*0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TitleHome(
                text: 'Pedidos\nrealizados',
                number: 233,
              ),
              SizedBox(width: width*0.05),
              TitleHome(
                text: 'Alimentos\nsalvos',
                number: 514,
              ),
            ],
          )
        ],
      ),),
    ):Image.asset("assets/image/logo_light.png",width: 50,fit: BoxFit.fitWidth,);
  }
}
