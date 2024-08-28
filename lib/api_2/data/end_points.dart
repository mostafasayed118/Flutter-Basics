class EndPoints {
  static const String baseUrl = "https://food-api-omega.vercel.app/api/v1/";
  //! post
  static const String signUp = 'chef/signup';
  static const String signIn = 'chef/signin';
  //! patch
  static const String changePassword = 'chef/change-password';
  //! delete
  static const String deleteAccount = 'chef/delete';
  //! get
  static const String getChefs = 'admin/get-chefs';
  static const String getChefData = 'chef/get-chef/';

  //! get by id
  static String getChefById(String id) => '$getChefData$id';
//! delete by id
  static String deleteChefById(String id) => '$deleteAccount?id=$id';
}

class APIKeys {
  static const String email = 'email';
  static const String password = 'password';
}
