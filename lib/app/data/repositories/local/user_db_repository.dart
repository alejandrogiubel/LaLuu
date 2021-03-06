import 'package:LaLuu/app/data/models/user_appliance_model.dart';
import 'package:LaLuu/app/data/providers/local/user_appliance_db.dart';
import 'package:get/get.dart';

class UserDbRepository {
  UserApplianceDb userApplianceDb;

  UserDbRepository() {
    userApplianceDb = Get.find<UserApplianceDb>();
  }

  Future<int> addModel(UserApplianceModel model) async {
    return await userApplianceDb.addModel(model);
  }

  Future<void> removeModel(int key) async {
    await userApplianceDb.removeModel(key);
  }

  Future<void> editModel(int key, UserApplianceModel newModel) async {
    await userApplianceDb.editModel(key, newModel);
  }

  UserApplianceModel getModel(int key) {
    return userApplianceDb.getModel(key);
  }

  Map<dynamic, UserApplianceModel> getAllModels() {
    return userApplianceDb.getAllModels();
  }

  bool isEmpty() => userApplianceDb.isEmpty();

  Future<void> delete() async {
    userApplianceDb.delete();
  }
}
