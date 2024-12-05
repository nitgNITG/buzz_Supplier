import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'image_pop_up_model.dart';
export 'image_pop_up_model.dart';

class ImagePopUpWidget extends StatefulWidget {
  const ImagePopUpWidget({
    super.key,
    this.index,
  });

  final int? index;

  @override
  State<ImagePopUpWidget> createState() => _ImagePopUpWidgetState();
}

class _ImagePopUpWidgetState extends State<ImagePopUpWidget> {
  late ImagePopUpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagePopUpModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: custom_widgets.ImagePreview(
        width: double.infinity,
        height: double.infinity,
        index: widget.index!,
      ),
    );
  }
}
