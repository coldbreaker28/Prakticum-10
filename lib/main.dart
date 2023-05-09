import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'forms.dart';
import 'input_fields.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image Counter')),
        body: Center(child: ImageCounter()),
      ),
    );
  }
}

class ImageCounter extends StatefulWidget {
  @override
  _ImageCounterState createState() => _ImageCounterState();
}

class _ImageCounterState extends State<ImageCounter> {
  final TextEditingController _controller = TextEditingController.fromValue(
      const TextEditingValue(text: "isi angka saja"));
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Image.asset('logo-polinema.png', width: 100, height: 100),
          onDoubleTap: () {
            setState(() {
              count++;
            });
          },
          onLongPress: () {
            setState(() {
              count++;
            });
          },
        ),
        SizedBox(height: 16.0),
        const Text('U have pushed the button this many times : '),
        Text('$count', style: TextStyle(fontSize: 24.0)),
        Form(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              VerificationCodeFromField(controller: _controller),
              Builder(
                builder: (BuildContext subContext) => ElevatedButton(
                  onPressed: () {
                    final valid = Form.of(subContext)?.validate();
                    if (kDebugMode) {
                      print("valid: $valid");
                    }
                  },
                  child: const Text("validate"),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
