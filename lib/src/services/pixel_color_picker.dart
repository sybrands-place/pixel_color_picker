import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:image/image.dart' as img;

class ColorPicker {
  final Uint8List? bytes;

  img.Image? _decodedImage;

  ColorPicker({this.bytes});

  Future<Color> getColor({required Offset pixelPosition}) async {
    _decodedImage ??= img.decodeImage(bytes!);

    final _abgrPixel = _decodedImage!.getPixelSafe(
      pixelPosition.dx.toInt(),
      pixelPosition.dy.toInt(),
    );

    final _color = Color.fromARGB(
      _abgrPixel.a.toInt(),
      _abgrPixel.r.toInt(),
      _abgrPixel.g.toInt(),
      _abgrPixel.b.toInt(),
    );

    return _color;
  }
}
