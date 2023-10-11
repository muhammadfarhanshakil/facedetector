import 'constants/imports.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    cameras = await availableCameras();
  } on CameraException catch (e) {
    debugPrint('CameraError: ${e.description}');
  }
  runApp(MaterialApp(
    title: "FACE DETECTOR",
      theme: ThemeData(primarySwatch: Colors.blue),
    home: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              FaceDetectorView().launch(context);
            },
            child: Text("DETECT EYE BLINK"),
          ),
        ),
      
    );
  }
}
