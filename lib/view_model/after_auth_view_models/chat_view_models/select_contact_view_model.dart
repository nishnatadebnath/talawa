import 'package:talawa/locator.dart';
<<<<<<< HEAD
import 'package:talawa/models/organization/org_info.dart';
import 'package:talawa/models/user/user_info.dart';
import 'package:talawa/services/org_service.dart';
import 'package:talawa/services/user_config.dart';
=======
import 'package:talawa/models/user/user_info.dart';
import 'package:talawa/services/org_service.dart';
>>>>>>> be9e55f423cff22fe3ce196c45a457395b2a914e
import 'package:talawa/view_model/base_view_model.dart';

class SelectContactViewModel extends BaseModel {
  late OrganizationService _organizationService;
  late List<User> orgMembersList = [];

  void initialise() {
    _organizationService = locator<OrganizationService>();
  }

  getCurrentOrgUsersList() async {
    if (orgMembersList.isEmpty) {
      orgMembersList = await _organizationService
          .getOrgMembersList(userConfig.currentOrg.id!);
    }

    //return orgMembersList;
  }
}
