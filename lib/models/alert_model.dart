import '../utils/export.dart';

class AlertModel{

  alert(String title, String content,final colorTextTitle, final colorTextContent, BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {

          return ShowDialog(
              title: title,
              content: content,
              colorTextContent: colorTextContent,
              colorTextTitle: colorTextTitle,
              listActions: [
                ButtonCustom(
                  onPressed: ()=>Navigator.pop(context),
                  text: 'OK',
                  widthCustom: 0.1,
                  heightCustom: 0.05,
                  colorBorder: PaletteColor.primaryColor,
                  colorButton: PaletteColor.primaryColor,
                  colorText: PaletteColor.white,
                  sizeText: 14.0,
                ),
              ]
          );
        });
  }
}