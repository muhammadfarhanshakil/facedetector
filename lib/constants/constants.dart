import 'imports.dart';

const Color primary = Color(0xff2596be);


void showSnackBar(BuildContext context, String content){

  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(content)));
}