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

    return width> 600?Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 230,
          width: width*0.15,
          child:Image.asset("assets/image/logo_light.png"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleHome(
              text: 'Empresas\ncadastradas',
              number: 15,
            ),
            SizedBox(width: 65),
            TitleHome(
              text: 'Entregadores\ncadastrados',
              number: 10,
            ),
            SizedBox(width: 65),
            TitleHome(
              text: 'Clientes\ncadastrados',
              number: 110,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TitleHome(
              text: 'Pedidos\nrealizados',
              number: 233,
            ),
            SizedBox(width: 90),
            TitleHome(
              text: 'Alimentos\nsalvos',
              number: 514,
            ),
          ],
        )
      ],
    ),):Image.asset("assets/image/logo_light.png",width: 50,fit: BoxFit.fitWidth,);
  }
}
