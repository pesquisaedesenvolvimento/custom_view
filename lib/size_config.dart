import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static double? screenWidth;
  static late double screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  static late double _safeAreaHorizontal;
  static late double _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;

  /// Tamanho da largura do protótitpo do XD, usado como base no calculo para
  /// saber qual o valor será setado nos componentes.
  static final int _widthPrototypeByDesign = 375;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _getSizeHorizontal();
    screenHeight = _getSizeVertical();
    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth! - _safeAreaHorizontal) / 50;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 50;
  }

  /// Recebe o [size] e retorna o pixel proporcional a tela do device.
  ///
  /// Realiza o calculo através da largura utilizado no protótipo recebida do
  /// design para obter um valor proporcional ao tamanho do device do usuário.
  ///
  /// Por exemplo: Tamanho de um texto no protótipo é 16, com a largura de 365
  /// do device do protótipo. No iPhone 5s a largura é 320 e o texto de 16 seria
  /// 13.65, ficando proporcional ao tamanho da tela.
  static double sizeByPixel(double size) {
    return screenWidth! * (size / _widthPrototypeByDesign);
  }

  double _getSizeVertical() {
    if (_mediaQueryData.orientation == Orientation.portrait) {
      return _mediaQueryData.size.height;
    }
    return _mediaQueryData.size.width;
  }

  double _getSizeHorizontal() {
    if (_mediaQueryData.orientation == Orientation.portrait) {
      return _mediaQueryData.size.width;
    }
    return _mediaQueryData.size.height;
  }
}