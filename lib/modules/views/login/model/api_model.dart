class api_model {
  var email;
  var password;
  var patient_login_id;
  var firstname;
  var lastname;
  var mobile;
  var username;
  var created_at;
  var updated_at;
  var active;
  var user_ip;
  var mac_address;
  var exp_date;
  var reset_link_token;
  var usertype;
  var oauth_provider;
  var gender;
  var picture;
  var doctor_id;
  var country_id;
  var state_id;
  var city_id;
  var offline;
  var clinic_name;
  var clinic_url;
  var clinic_activation;

  api_model({
    required this.email,
    required this.password,
    required this.active,
    required this.city_id,
    required this.clinic_activation,
    required this.clinic_name,
    required this.clinic_url,
    required this.country_id,
    required this.created_at,
    required this.doctor_id,
    required this.exp_date,
    required this.firstname,
    required this.gender,
    required this.lastname,
    required this.mac_address,
    required this.mobile,
    required this.oauth_provider,
    required this.offline,
    required this.patient_login_id,
    required this.picture,
    required this.reset_link_token,
    required this.state_id,
    required this.updated_at,
    required this.user_ip,
    required this.username,
    required this.usertype,
  });

  factory api_model.api({required Map e}) {
    return api_model(
        email: e['email'],
        password: e['password'],
        active: e['active'],
        city_id: e['city_id'],
        clinic_activation: e['clinic_activation'],
        clinic_name: e['clinic_name'],
        clinic_url: e['clinic_url'],
        country_id: e['country_id'],
        created_at: e['created_at'],
        doctor_id: e['doctor_id'],
        exp_date: e['exp_date'],
        firstname: e['firstname'],
        gender: e['gender'],
        lastname: e['lastname'],
        mac_address: e['mac_address'],
        mobile: e['mobile'],
        oauth_provider: e['oauth_provider'],
        offline: e['offline'],
        patient_login_id: e['patient_login_id'],
        picture: e['picture'],
        reset_link_token: e['reset_link_token'],
        state_id: e['state_id'],
        updated_at: e['updated_at'],
        user_ip: e['user_ip'],
        username: e['username'],
        usertype: e['usertype']);
  }
}
