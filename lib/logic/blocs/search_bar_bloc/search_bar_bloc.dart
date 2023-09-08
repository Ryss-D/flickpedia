// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';

// part 'fence_event.dart';
// part 'fence_state.dart';

// class FenceBloc extends Bloc<FenceEvent, FenceState> {
//   FenceBloc() : super(FenceInitial()) {
//     on<FetchAllDevices>((event, emit) async {
//       final FenceRepository _fenceRepository = FenceRepository();
//       final UserRepository _userRepository = UserRepository();

//       try {
//         emit(FenceLoading());
//         final response = await _fenceRepository.getAllFences();
//         emit(FenceAll(response));
//       } catch (e) {
//         await _userRepository.deleteToken();
//         emit(FenceError('Hubo un error al cargar los dispositivos:$e'));
//       }
//     });
//   }
// }