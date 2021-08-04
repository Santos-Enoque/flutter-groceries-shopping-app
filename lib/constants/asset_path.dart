final String imageAssetsRoot = "assets/images/";
final String banner1 = _getImagePath("banner_1.jpg");
final String banner2 = _getImagePath("banner_2.jpg");
final String tomatoImage = _getImagePath("tomato.jpg");
final String meatImage = _getImagePath("meat.jpg");
final String orangeImage = _getImagePath("orange.jpg");
final String lettuceImage = _getImagePath("lettuce.jpg");


String _getImagePath(String fileName){
  return imageAssetsRoot + fileName;
}