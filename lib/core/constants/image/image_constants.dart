class ImageConstants {
  static late ImageConstants _instance;
  static ImageConstants get instance {
    if (_instance == null) _instance = ImageConstants._init();
    return _instance;
  }

  ImageConstants._init();

  String get logo => toPng('ali');

  String toPng(String name) => "assets/image&/$name";
}
