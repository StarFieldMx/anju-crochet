const String absolutePath = 'images';

abstract class AnjuImages {
  static const logo = '$absolutePath/anju_logo.png';
  static const test = '$absolutePath/test.jpg';
  static const heart = '$absolutePath/IMG_3077.jpeg';
  static const borrego = '$absolutePath/IMG_2858.jpeg';
  static const cuis = '$absolutePath/IMG_0797.jpeg';

  static Set<String> get values => {
        logo,
        test,
        heart,
        borrego,
        cuis,
      };
}

abstract class AnjuSvg {
  static const balance = '$absolutePath/balance.svg';
  static const stats = '$absolutePath/stats.svg';
  static const eyes = '$absolutePath/app/eyes.svg';
  static const eyes2 = '$absolutePath/app/eyes2.svg';
  static const accessory = '$absolutePath/app/accessory.svg';
  static const filling = '$absolutePath/app/filling.svg';
  static const hooks = '$absolutePath/app/hooks.svg';
  static const hooks2 = '$absolutePath/app/hooks2.svg';
  static const keychains = '$absolutePath/app/keychains.svg';
  static const yarn = '$absolutePath/app/yarn.svg';
  static const yarn2 = '$absolutePath/app/yarn2.svg';

  static Set<String> get values => {
        balance,
        stats,
        eyes,
        eyes2,
        accessory,
        filling,
        hooks,
        hooks2,
        keychains,
        yarn,
        yarn2,
      };
}
