const String absolutePath = 'images';

abstract class AnjuImages {
  static const logo = '$absolutePath/anju_logo.png';
  static const test = '$absolutePath/test.jpg';
  static const heart = '$absolutePath/IMG_3077.jpeg';
  static const borrego = '$absolutePath/IMG_2858.jpeg';
  static const cuis = '$absolutePath/IMG_0797.jpeg';

  static List<String> get values => [
        logo,
        test,
        heart,
        borrego,
        cuis,
      ];
}
