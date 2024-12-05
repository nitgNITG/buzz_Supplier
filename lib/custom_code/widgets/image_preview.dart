// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class ImagePreview extends StatefulWidget {
  const ImagePreview({
    Key? key,
    this.width,
    this.height,
    required this.index,
  }) : super(key: key);

  final double? width;
  final double? height;
  final int index;

  @override
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  int _index = 0;
  @override
  void initState() {
    _index = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child: const CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.close,
                      color: Color(0xff999999),
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(FFAppState().GalleryImages[_index]),
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        if (_index >= 1) {
                          _index = _index - 1;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_outlined,
                      size: 20,
                      color: Colors.white,
                    )),
                Text(
                  "${_index + 1}/${FFAppState().GalleryImages.length}",
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        if (_index < FFAppState().GalleryImages.length - 1) {
                          _index = _index + 1;
                        }
                      });
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
