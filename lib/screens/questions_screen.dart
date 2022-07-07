import '../utils/export.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  var _controllerQuestion = TextEditingController();
  var _controllerAnswer = TextEditingController();
  List<QuestionModel> list=[];
  List _allResults = [];
  var showAswer = false;
  var select = 1;

  data(String type)async{
    var data = await db.collection("questions").where('type', isEqualTo: type).get();

    setState(() {
      _allResults = data.docs;
    });
  }

  _saveQuestion(String type)async{

    DocumentReference ref  = db.collection("questions").doc();

    String id = ref.id;

     db.collection('questions').doc(id).set({
       'id':id,
       'type':type,
       'question' : _controllerQuestion.text,
       'answer' : _controllerAnswer.text,
       'date' : DateTime.now()
     }).then((value){
       setState(() {
         AlertModel().alert('Sucesso!', 'Sua pergunta foi salva!',PaletteColor.green,PaletteColor.green,context);
         _controllerQuestion.clear();
         _controllerAnswer.clear();
       });
     });
  }
  _deleteQuestion(String id){

    db.collection('questions').doc(id).delete().then((value){
      AlertModel().alert('Sucesso', 'Pergunta excluída com sucesso!', PaletteColor.green, PaletteColor.green,context);
      setState(() {
        list=[];
        _allResults=[];
      });
    });
  }

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
                          onPressed: () {
                              if(_controllerQuestion.text.isNotEmpty && _controllerAnswer.text.isNotEmpty){
                                switch (select){
                                  case 1:
                                    _saveQuestion('enterprise');
                                    break;
                                  case 2:
                                    _saveQuestion('delivery');
                                    break;
                                  case 3:
                                    _saveQuestion('client');
                                    break;
                                  default:
                                    AlertModel().alert('Erro !','Selecione uma das opções acima "Cadastrar nova pergunta"',PaletteColor.red,PaletteColor.red,context);
                                    break;
                                }
                              }else{
                                AlertModel().alert('Erro !','Preencha os campos Pergunta e Resposta para salvar.',PaletteColor.red,PaletteColor.red,context);
                              }
                          },
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
                                  _allResults=[];
                                  list=[];
                                  data('enterprise');
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
                                  _allResults=[];
                                  list=[];
                                  data('delivery');
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
                                  _allResults=[];
                                  list=[];
                                  data('client');
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
                          itemCount: _allResults.length,
                          itemBuilder:(context,index){

                            DocumentSnapshot item = _allResults[index];

                            if(_allResults.length == 0){
                              return Center(
                                  child: Text('Nenhuma pergunta encontrada dessa categoria',
                                    style: TextStyle(fontSize: 16,color: PaletteColor.primaryColor),)
                              );
                            }else{
                              list.add(
                                  QuestionModel(
                                      answer: item['answer'],
                                      question: item['question'],
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
                                  onPressedDelete: (){
                                    _deleteQuestion( item['id']);
                                  },
                                  showQuestion: list[index].showQuestion
                              );
                            }
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
