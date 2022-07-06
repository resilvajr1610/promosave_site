import 'package:promosave_site/utils/export.dart';

class ContainerQuestion extends StatelessWidget {

  final question;
  final answer;
  final onPressedShow;
  final onPressedDelete;
  final showQuestion;

  ContainerQuestion({
    required this.question,
    required this.answer,
    required this.onPressedShow,
    required this.onPressedDelete,
    required this.showQuestion,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextCustom(
                text: question,
                color: PaletteColor.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: onPressedShow,
              icon: Icon(showQuestion?Icons.arrow_drop_down:Icons.arrow_right,color: PaletteColor.greyInput,),
            ),
            IconButton(
              onPressed: onPressedDelete,
              icon: Icon(Icons.delete,color: PaletteColor.primaryColor,),
            ),
          ],
        ),
        showQuestion?Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextCustom(
            text: answer,
            color: PaletteColor.grey,
          ),
        ):Container(),
      ],
    );
  }
}
