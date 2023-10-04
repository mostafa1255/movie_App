import 'action.dart';
import 'adventure.dart';
import 'animation.dart';
import 'comedy.dart';
import 'drama.dart';
import 'foryou.dart';

class MoviesModel {
	List<Foryou>? foryou;
	List<Action>? action;
	List<Drama>? drama;
	List<Comedy>? comedy;
	List<Adventure>? adventure;
	List<Animation>? animation;

	MoviesModel({
		this.foryou, 
		this.action, 
		this.drama, 
		this.comedy, 
		this.adventure, 
		this.animation, 
	});

	factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
				foryou: (json['foryou'] as List<dynamic>?)
						?.map((e) => Foryou.fromJson(e as Map<String, dynamic>))
						.toList(),
				action: (json['action'] as List<dynamic>?)
						?.map((e) => Action.fromJson(e as Map<String, dynamic>))
						.toList(),
				drama: (json['drama'] as List<dynamic>?)
						?.map((e) => Drama.fromJson(e as Map<String, dynamic>))
						.toList(),
				comedy: (json['comedy'] as List<dynamic>?)
						?.map((e) => Comedy.fromJson(e as Map<String, dynamic>))
						.toList(),
				adventure: (json['Adventure'] as List<dynamic>?)
						?.map((e) => Adventure.fromJson(e as Map<String, dynamic>))
						.toList(),
				animation: (json['Animation'] as List<dynamic>?)
						?.map((e) => Animation.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'foryou': foryou?.map((e) => e.toJson()).toList(),
				'action': action?.map((e) => e.toJson()).toList(),
				'drama': drama?.map((e) => e.toJson()).toList(),
				'comedy': comedy?.map((e) => e.toJson()).toList(),
				'Adventure': adventure?.map((e) => e.toJson()).toList(),
				'Animation': animation?.map((e) => e.toJson()).toList(),
			};
}
