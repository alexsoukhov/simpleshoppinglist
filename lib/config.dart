late Config _config;

Config get config => _config;

class Config {
  final bool isStackTrace;

  Config._internal(this.isStackTrace) {
    _config = this;
  }

  //TODO(AS):
  factory Config.dev() {
    return Config._internal(true);
  }
}
