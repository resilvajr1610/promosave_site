import '../utils/export.dart';

class Menu extends StatelessWidget {
  final index;

  Menu({required this.index});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Flexible(
      flex: 1,
      child: Column(
        children: [
          SizedBox(
            height: height*0.2,
            width: height*0.2,
            child:Image.asset("assets/image/logo.png"),
          ),
          TitleMenu(
            index: 0,
            text: 'Home',
            icon: Icons.home,
            select: this.index==0?true:false,
          ),
          TitleMenu(
            index: 1,
            text: 'Empresas',
            icon: Icons.store,
            select:  this.index==1?true:false,
          ),
          TitleMenu(
            index: 2,
            text: 'Entregadores',
            icon: Icons.moped,
            select:  this.index==2?true:false,
          ),
          TitleMenu(
            index: 3,
            text: 'Taxas',
            icon: Icons.percent,
            select:  this.index==3?true:false,
          ),
          TitleMenu(
            index: 4,
            text: 'Finanças',
            icon: Icons.currency_exchange,
            select:  this.index==4?true:false,
          ),
          TitleMenu(
            index: 5,
            text: 'Perguntas frequentes',
            icon: Icons.help,
            select:  this.index==5?true:false,
          ),
        ],
      )
    );
  }
}
