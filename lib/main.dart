import 'utils/export.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  var route='/login';

  if(FirebaseAuth.instance.currentUser!=null){
    route ='/navigation';
  }else{
    route ='/login';
  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: LoginScreen(),
    initialRoute:route,
    onGenerateRoute: Routes.generateRoute,
  ));
}