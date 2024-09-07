import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_todo/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});
  }
}
