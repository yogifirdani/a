class UserModel {
  String? username;
  String? password;
  String? nama;
  String? alamat;
  String? gender;

  UserModel({
    this.username,
    this.password,
    this.nama,
    this.alamat,
    this.gender,
  });

  bool checkUserLogin() {
    if (username == "coba" && password == "coba123") {
      return true;
    } else {
      return false;
    }
  }
}
