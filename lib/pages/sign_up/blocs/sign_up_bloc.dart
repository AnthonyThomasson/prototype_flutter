import 'package:bloc/bloc.dart';
import 'sign_up_state.dart';

enum SignUpEvent { signInWithFacebook }

class RoundButtonBloc extends Bloc<SignUpEvent, SignUpState> {

  @override
  SignUpState get initialState => SignUpState.initial();

  @override
  Stream<SignUpState> mapEventToState(SignUpEvent event) async* {
    switch (event) {
      case SignUpEvent.signInWithFacebook:

        // SOMETHING


        break;
    }
  }
}