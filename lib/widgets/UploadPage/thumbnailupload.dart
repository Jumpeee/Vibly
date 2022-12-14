import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

typedef MSP = MaterialStateProperty;

class ThumbnailUpload extends StatefulWidget {
  const ThumbnailUpload({Key? key}) : super(key: key);

  static String? get thumbnail {
    return _ThumbnailUploadState.thumbnailFile;
  }

  @override
  State<ThumbnailUpload> createState() => _ThumbnailUploadState();
}

class _ThumbnailUploadState extends State<ThumbnailUpload> {
  static String? thumbnailFile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Uploaded file: $thumbnailFile",
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),

          ///[Upload Button]
          ElevatedButton(
            onPressed: () async {
              final file = await FilePicker.platform.pickFiles();

              final fileName = file!.names[0];

              if (!file.isSinglePick) return;

              if (!fileName!.endsWith(".jpeg") ||
                  !fileName.endsWith(".jpg") ||
                  !fileName.endsWith(".bmp") ||
                  !fileName.endsWith(".png") ||
                  !fileName.endsWith(".webp")) return;

              setState(() {
                thumbnailFile = file.names[0];
              });
            },
            style: ButtonStyle(
              backgroundColor: MSP.all(Theme.of(context).primaryColor),
            ),
            child: SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.upload_rounded,
                    color: Colors.black,
                  ),
                  Text(
                    "Choose thumbnail",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
