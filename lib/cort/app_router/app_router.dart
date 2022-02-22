// import 'package:breakingbad_api_with_block/business_logic/cubit/chartcter_cubit.dart';
// import 'package:breakingbad_api_with_block/constant/string.dart';
// import 'package:breakingbad_api_with_block/data/repostery/character_repostery.dart';
// import 'package:breakingbad_api_with_block/data/web_servic/characrer_web_servic.dart';
// import 'package:breakingbad_api_with_block/feature/character_details/view.dart';
// import 'package:breakingbad_api_with_block/feature/character_list/view.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class AppRouter {
//   late CharacterRepository charactersRepository;
//   late ChartcterCubit charactersCubit;

//   AppRouter() {
//     charactersRepository = CharacterRepository(CharacterswebServices());
//     charactersCubit = ChartcterCubit(charactersRepository);
//   }

//   Route? generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case charactersScreen:
//         return MaterialPageRoute(
//             builder: (_) => BlocProvider(
//                   create: (BuildContext context) =>
//                       ChartcterCubit(charactersRepository),
//                   child: const CharacterView(),
//                 ));

//       case characterDetailsScreen:
//         return MaterialPageRoute(builder: (_) => CharacterDetailsView());
//     }
//   }
// }
