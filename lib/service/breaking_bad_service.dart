import 'package:vexana/vexana.dart';
import '../model/breaking_bad_model.dart';

abstract class IBreakingBadService {
  Future<void> allCharList();
}

class BreakingBadService extends IBreakingBadService {
  INetworkManager manager = NetworkManager(
      isEnableLogger: true,
      options: BaseOptions(baseUrl: "https://breakingbadapi.com/api/"));

  List<BreakingBadModel> charlist = [];
  @override
  Future<List<BreakingBadModel>> allCharList() async {
    final response = await manager.send("/characters",
        parseModel: BreakingBadModel(), method: RequestType.GET);
    charlist = response.data ?? [];
    return charlist;
  }
}
