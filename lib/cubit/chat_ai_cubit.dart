import 'package:flutter_bloc/flutter_bloc.dart';

import '../app/model/api_return_aiChat.dart';
import '../app/model/model_ai.dart';
import '../app/services/get_ai_services.dart';
import 'chat_ai_state.dart';

class AiCubit extends Cubit<AiState> {
  AiCubit() : super(AiInitial());

  Future<void> getAi(String token, String random_id) async {
    ApiReturnAi<List<Ai>>? result =
    await AiServices.getAi(token, random_id);
    if (result?.value != null) {
      emit(AiLoaded(ai: result?.value));
    } else {
      emit(AiLoadingFailed(result?.message));
    }
  }
}
