import '../utils/export.dart';

class ShowImage extends StatelessWidget {
  final listActions;
  final url;

  ShowImage({
    required this.listActions,
    required this.url,
});

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return AlertDialog(
      title: Container(
        alignment: Alignment.center,
          width: width*0.2,
          height: height*0.05,
        child: TextCustom(text: 'Foto',size: 20.0,fontWeight: FontWeight.bold,)
      ),
      titleTextStyle: TextStyle(color: PaletteColor.primaryColor,fontSize: 20),
      content: Row(
        children: [
          Expanded(
              child:  Container(
                margin: EdgeInsets.all(10),
                width: height*0.8,
                height: height*0.8,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      url!=""?url:TextConst.LOGO,
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
          ),
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      contentPadding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      actions: listActions,
    );
  }
}
