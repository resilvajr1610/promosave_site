import '../utils/export.dart';

class TitleMenu extends StatelessWidget {

  final text;
  final icon;
  final select;
  final index;

  TitleMenu({
    required this.text,
    required this.icon,
    required this.index,
    this.select = false,
});

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: ()=> Navigator.pushReplacement(context, PageTransition(
        child: NavigationScreen(index: index),
        type: PageTransitionType.fade,
        duration: Duration.zero
      )),
      child: Container(
        margin: EdgeInsets.only(left: 20,bottom: 15),
        width: width,
        height: 58,
        decoration: BoxDecoration(
          color: select ? PaletteColor.greyLight: PaletteColor.primaryColor,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),topLeft: Radius.circular(20)),
          border: Border.all(color: select ? PaletteColor.greyLight : PaletteColor.primaryColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 15),
            Icon(icon, color: select ? PaletteColor.primaryColor : PaletteColor.white),
            SizedBox(width: 10),
            TextCustom(
              text: text,
              color: select ? PaletteColor.primaryColor : PaletteColor.white,
              textAlign: TextAlign.start,
              fontWeight: select ? FontWeight.bold : FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}
