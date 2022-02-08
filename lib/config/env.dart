// ignore_for_file: constant_identifier_names
class Env {
  static String? envFilePath;
  static get getEnvFilePath => envFilePath;
  Env({
    required String input,
  }) {
    switch (input) {
      case "Development":
        envFilePath = ".env";
        break;

      case "Staging":
        envFilePath = ".env.stg";
        break;

      case "Production":
        envFilePath = ".env.prod";
        break;
    }
  }
}
