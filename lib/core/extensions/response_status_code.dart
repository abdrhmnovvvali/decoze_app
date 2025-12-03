extension ResponseStatusCode on int {
  //Informational
  bool get isInformational => this >= 100 && this < 200;

  //Success
  bool get isOk => this == 200;
  bool get isCreated => this == 201;
  bool get isNoContent => this == 204;
  bool get isSuccess => this >= 200 && this < 300;

  //Redirect
  bool get isRedirect => this == 301 || this == 302;

  //Client-Error
  bool get isBadRequest => this == 400;
  bool get isUnAuthorized => this == 401;
  bool get isForbidden => this == 403;
  bool get isNotFound => this == 404;

  //Server-Error
  bool get isServerError => this >= 500 && this < 600;
}
