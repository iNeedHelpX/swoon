//rapyd api config to make calling ther keys abstracted for security purposes. Generally this file should not be checked into git but the the purposes of this Rapyd hackathon it will be so that the judges can better understand my procceses. I already have a variable set in globalvars file
//access goes like this:
//configurations.apiKey,

class RapydConfigurations {
  static const _rapydSecretKey =
      "7f14bbfd8595c0f735f14a38446451227c2b69676d9cabf90f6532c536b5a5ace7a9715111afc323";
  static const _rapydAccessKey = "79B53038AA5F0E6789F8";

//Make some getter functions. acces these by "rapydSecretKey. "
  String get rapydSecretKey => _rapydSecretKey;
  String get rapydAccessKey => _rapydAccessKey;
}
