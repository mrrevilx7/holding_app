import 'package:holding_app/src/model/api_models/Profile_api.dart';
import 'package:holding_app/src/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class ProfileBloc {
   final Repository _repository = Repository();
   final customersDate = PublishSubject<ProfileModel>();

  Stream<ProfileModel> get getCustomers => customersDate.stream;

   allCustomers() async {
    var response = await _repository.getCustomers();
    if (response.isSuccess) {
      ProfileModel result = ProfileModel.fromJson(response.result);
      customersDate.sink.add(result);
    }
  }

  dispose() {
    customersDate.close();
  }
}

final profileBloc = ProfileBloc();
