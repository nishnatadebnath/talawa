import 'package:flutter/material.dart';
import 'package:talawa/locator.dart';
<<<<<<< HEAD
import 'package:talawa/models/chats/chat_list_tile_data_model.dart';
import 'package:talawa/models/chats/chat_user.dart';
import 'package:talawa/view_model/after_auth_view_models/chat_view_models/select_contact_view_model.dart';
import 'package:talawa/views/after_auth_screens/add_post_page.dart';
import 'package:talawa/views/after_auth_screens/chat/chat_message_screen.dart';
=======
import 'package:talawa/view_model/after_auth_view_models/chat_view_models/select_contact_view_model.dart';
>>>>>>> be9e55f423cff22fe3ce196c45a457395b2a914e
import 'package:talawa/views/base_view.dart';

class SelectContact extends StatefulWidget {
  const SelectContact({Key? key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
<<<<<<< HEAD
            icon: Icon(Icons.arrow_back),
=======
            icon: const Icon(Icons.arrow_back),
>>>>>>> be9e55f423cff22fe3ce196c45a457395b2a914e
            onPressed: () {
              navigationService.pop();
            },
          ),
          title: Text(
            "Select Contacts",
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
          ),
        ),
        body: BaseView<SelectContactViewModel>(onModelReady: (model) {
          model.initialise();
          model.getCurrentOrgUsersList();
        }, builder: (context, model, child) {
          return ListView.builder(
            itemCount: model.orgMembersList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatMessageScreen(chat: ChatListTileDataModel(ChatUser(model.orgMembersList[index].firstName,model.orgMembersList[index].id,model.orgMembersList[index].image),null,0))));
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 25,
                      ),
                      title: Text(
                          model.orgMembersList[index].firstName.toString()),
                    ),
                  ),
                ),
              );
            },
          );
        }));
  }
}
