abstract class EndPoints {
  EndPoints._();

  static const baseUrl = "http://192.168.76.120:5240/Api/";
  static const address = "http://192.168.76.120/";

  static const home = _Home();
}

class _Home {
  const _Home();

  final getHome = 'Parent/Home/GetHome';
}
