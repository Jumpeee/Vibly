import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

typedef MSP = MaterialStateProperty;

class ChooseSongButton extends StatefulWidget {
  const ChooseSongButton({Key? key}) : super(key: key);

  @override
  State<ChooseSongButton> createState() => _ChooseSongButtonState();
}

class _ChooseSongButtonState extends State<ChooseSongButton> {
  Object? soundFile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Wrap(
        direction: Axis.vertical,
        children: [
          Text(
            "Uploaded file: $soundFile",
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),

          ///[Upload Button]
          ElevatedButton(
            onPressed: () async {
              final file = await FilePicker.platform.pickFiles();

              if (file == null ||
                  !file.isSinglePick ||
                  !file.names[0]!.endsWith(".mp3")) return;

              setState(() {
                soundFile = file.names[0];
              });
            },
            style: ButtonStyle(
              backgroundColor: MSP.all(Theme.of(context).primaryColor),
            ),
            child: SizedBox(
              width: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.upload_rounded),
                  Text("Choose file"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Object? get song => soundFile;
}
