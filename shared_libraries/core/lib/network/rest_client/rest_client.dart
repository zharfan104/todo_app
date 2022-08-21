import 'package:dependencies/dependencies.dart';
import 'package:resources/resources.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: ApiConstant.apiUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/task")
  Future<ResponseGetTaskMdl> getTasks();

  @POST("/task")
  Future<void> addTask(@Body() TaskMdl task);

  @PUT("/task/{id}")
  Future<void> updateTask(@Path() String? id, @Body() ParamUpdateTaskMdl task);
}
