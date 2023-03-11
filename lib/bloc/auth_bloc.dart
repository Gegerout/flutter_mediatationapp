import 'package:auth_user_repository/auth_user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:stream_transform/stream_transform.dart';

part 'auth_event.dart';
part 'auth_state.dart';

EventTransformer<E> debounceDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.debounce(duration), mapper);
  };
}

class AuthBloc extends Bloc<AuthEvent, UserState> {
  AuthBloc({required AuthUserRepository authUserRepository})
      : _authUserRepository = authUserRepository,
        super(UserState()) {
    on<AuthUserEvent>(_onUserAuth,
        transformer: debounceDroppable(const Duration(microseconds: 500)));
  }

  late final AuthUserRepository _authUserRepository;

  _onUserAuth(AuthUserEvent event, Emitter<UserState> emit) async {
    // if (event.email.isEmpty || event.password.isEmpty) return emit(UserState(user: null));
    // if (event.email.length < 2 || event.password.length < 2) return;

    final user = await _authUserRepository.onUserAuth(event.email, event.password);

    print(user);

    emit(UserState(user: user));
  }
}
