import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class __TITLE__Controller extends GetxController {
  final GetStorage _storage = GetStorage();

  var isEnabled = false.obs;
  var localVariable = ''.obs;
  var persistentVariable = ''.obs;

  @override
  void onInit() {
    super.onInit();

    String? enabled = _storage.read('__TITLE___Is_Enabled');
    if (enabled != null) {
      isEnabled.value = enabled == 'true';
    }

    String? persistent = _storage.read('__TITLE___Persistent_Variable');
    if (persistent != null) {
      persistentVariable.value = persistent;
    }
  }

  void setLocalVariable(String variable) {
    localVariable.value = variable;
  }

  void setPersistentVariable(String variable) {
    persistentVariable.value = variable;
    _storage.write('__TITLE___Persistent_Variable', variable);
  }
}
