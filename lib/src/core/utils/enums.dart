enum AppLocalRoute {
  previewPost('/preview_post'),
  home('/home_page'),
  ;

  final String route;

  const AppLocalRoute(this.route);
}

enum ApiRoute {
  posts('/posts'),
  ;

  final String route;

  const ApiRoute(this.route);
}

enum ApiMethod { get, post, put, delete }

enum DeviceScreenType { mobile, tablet }
