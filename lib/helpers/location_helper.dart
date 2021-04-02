//const GOOGLE_API_KEY = 'AIzaSyAN0PmxoPnOc1BS6hyaMUBFGTvbvGhPWyE';
const GOOGLE_API_KEY = 'AIzaSyAvXW39TeEO1YFlic4QkG9ibxW7oy5b6J8';

class LocationHelper {
  static String generateLocationPreviewImage(
      {double latitude, double longitude}) {
    return 'https://maps.googleapis.com/maps/api/staticmap?center=&$latitude,$longitude&zoom=13&size=600x300&maptype=roadmap&markers=color:red%7Clabel:C%7C$latitude,$longitude&key=$GOOGLE_API_KEY';
//&markers=color:blue%7Clabel:S%7C40.702147,-74.015794&markers=color:green%7Clabel:G%7C40.711614,-74.012318
  }
}
