import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: ApiConstant.apiUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/task')
  Future<ResponseGetTaskMdl> getTasks();

  @POST('/task')
  Future<void> addTask(@Body() TaskMdl task);

  @PUT('/task/{id}')
  Future<void> updateTask(@Path() int? id, @Body() ParamUpdateTaskMdl task);

  @DELETE('/task/{id}')
  Future<void> deleteTask(@Path() int? id);

  @GET('/user/me')
  Future<ResponseGetProfileMdl> getProfile();

  @PUT('/user/me')
  Future<ResponseGetProfileMdl> updateProfile(
    @Body() ParamUpdateProfileMdl profile,
  );

  @POST('/user/login')
  Future<ResponseLoginMdl> submitLogin(@Body() ParamLoginMdl paramLogin);

  @POST('/user/register')
  Future<ResponseLoginMdl> submitRegister(
    @Body() ParamRegisterMdl paramRegister,
  );
}
