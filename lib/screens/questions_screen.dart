import '../utils/export.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var _controllerQuestion = TextEditingController();
  var _controllerAnswer = TextEditingController();
  var select = 1;
  var showAswer = false;
  List<QuestionModel> list=[];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: PaletteColor.greyLight,
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 64.0, left: 64, bottom: 16),
              child: Container(
                width: width,
                child: TextCustom(
                  text: 'Cadastrar nova pergunta',
                  size: 24.0,
                  fontWeight: FontWeight.bold,
                  color: PaletteColor.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:width*0.05),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal:  width*0.05,),
                  padding: EdgeInsets.symmetric( vertical: 12),
                  width: width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: width * 0.13,
                            child: RadioListTile(
                              title: Text('Empresa'),
                              value: 1,
                              groupValue: select,
                              activeColor: PaletteColor.primaryColor,
                              onChanged: (val) {
                                setState(() {
                                  select = val as int;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: width * 0.15,
                            child: RadioListTile(
                              title: Text('Entregador'),
                              value: 2,
                              groupValue: select,
                              activeColor: PaletteColor.primaryColor,
                              onChanged: (val) {
                                setState(() {
                                  select = val as int;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: width * 0.15,
                            child: RadioListTile(
                              title: Text('Cliente'),
                              value: 3,
                              groupValue: select,
                              activeColor: PaletteColor.primaryColor,
                              onChanged: (val) {
                                setState(() {
                                  select = val as int;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextCustom(
                        text: 'Pergunta',
                        size: 14.0,
                      ),
                      Input(
                        controller: _controllerQuestion,
                        hint: 'Pergunta',
                        fontSize: 14.0,
                        keyboardType: TextInputType.text,
                        width: width * 0.65,
                        colorBorder: PaletteColor.greyLight,
                        background: PaletteColor.greyLight,
                      ),
                      SizedBox(height: 20),
                      TextCustom(
                        text: 'Resposta',
                        size: 14.0,
                      ),
                      Input(
                        controller: _controllerAnswer,
                        hint: 'Resposta',
                        fontSize: 14.0,
                        keyboardType: TextInputType.number,
                        width: width * 0.65,
                        colorBorder: PaletteColor.greyLight,
                        background: PaletteColor.greyLight,
                      ),
                      SizedBox(height: 50),
                      ButtonCustom(
                          onPressed: () {},
                          text: 'Salvar',
                          sizeText: 14.0,
                          colorButton: PaletteColor.primaryColor,
                          colorText: PaletteColor.white,
                          colorBorder: PaletteColor.primaryColor,
                          widthCustom: 0.15,
                          heightCustom: 0.05),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0, left: 64, bottom: 16),
              child: Container(
                width: width,
                child: TextCustom(
                  text: 'Perguntas cadastradas',
                  size: 24.0,
                  fontWeight: FontWeight.bold,
                  color: PaletteColor.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:width*0.05),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                elevation: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal:  width*0.05,),
                  padding: EdgeInsets.symmetric( vertical: 12),
                  width: width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: width * 0.13,
                            child: RadioListTile(
                              title: Text('Empresa'),
                              value: 4,
                              groupValue: select,
                              activeColor: PaletteColor.primaryColor,
                              onChanged: (val) {
                                setState(() {
                                  select = val as int;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: width * 0.15,
                            child: RadioListTile(
                              title: Text('Entregador'),
                              value: 5,
                              groupValue: select,
                              activeColor: PaletteColor.primaryColor,
                              onChanged: (val) {
                                setState(() {
                                  select = val as int;
                                });
                              },
                            ),
                          ),
                          Container(
                            width: width * 0.15,
                            child: RadioListTile(
                              title: Text('Cliente'),
                              value: 6,
                              groupValue: select,
                              activeColor: PaletteColor.primaryColor,
                              onChanged: (val) {
                                setState(() {
                                  select = val as int;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: height*0.25,
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder:(context,index){

                            list.add(
                                QuestionModel(
                                  answer: 'Resposta ${index+1}.',
                                  question: 'Pergunta ${index+1}?',
                                  showQuestion: false
                                )
                            );

                            return ContainerQuestion(
                                question: list[index].question,
                                answer: list[index].answer,
                                onPressedShow: (){
                                  setState(() {
                                    list[index].showQuestion?list[index].showQuestion=false:list[index].showQuestion=true;
                                  });
                                },
                                onPressedDelete: (){},
                                showQuestion: list[index].showQuestion
                            );
                          }
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}
