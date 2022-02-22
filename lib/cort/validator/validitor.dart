class Validator {

  static String? email(String? value) {
    if(value!.isEmpty) return 'Email Empty!';
    else if(!value.contains('@') || !value.contains('.com')) return 'EX: example@example.com';
  }

  static String? password(String? value) {
    if(value!.isEmpty) return 'Password Empty!';
    else if(value.length < 8) return 'Password must be at least 8 digit';
  }

  static String? userName(String? value) {
    if(value!.isEmpty) return 'UserName Empty!';
    else if(value.length < 3) return 'Password must be at least 3 digit';
  }

}