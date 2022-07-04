import '../utils/export.dart';

class TitleHome extends StatelessWidget {
  int number;
  final text;

  TitleHome({
    required this.number,
    required this.text,
});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: PaletteColor.primaryColor,
          child: TextCustom(
            text: number.toString(),
            color: PaletteColor.white,
            size: 40,
          ),
        ),
        SizedBox(height: 16),
        TextCustom(
          text: text,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,
          size: 24,
        ),
      ],
    );
  }
}
