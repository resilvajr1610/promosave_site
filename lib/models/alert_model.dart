import '../utils/export.dart';

class AlertModel{

  alert(String title, String content,final colorTextTitle, final colorTextContent, BuildContext context, List<Widget> listActions){
    showDialog(
        context: context,
        builder: (context) {

          return ShowDialog(
              title: title,
              content: content,
              colorTextContent: colorTextContent,
              colorTextTitle: colorTextTitle,
              listActions: listActions
          );
        });
  }
}