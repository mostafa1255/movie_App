class Foryou {
	String? title;
	int? year;
	String? director;
	double? rating;
	String? summary;
	String? cover;
	String? video;
	String? duration;

	Foryou({
		this.title, 
		this.year, 
		this.director, 
		this.rating, 
		this.summary, 
		this.cover, 
		this.video, 
		this.duration, 
	});

	factory Foryou.fromJson(Map<String, dynamic> json) => Foryou(
				title: json['title'] as String?,
				year: json['year'] as int?,
				director: json['director'] as String?,
				rating: (json['rating'] as num?)?.toDouble(),
				summary: json['summary'] as String?,
				cover: json['cover'] as String?,
				video: json['video'] as String?,
				duration: json['duration'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'title': title,
				'year': year,
				'director': director,
				'rating': rating,
				'summary': summary,
				'cover': cover,
				'video': video,
				'duration': duration,
			};
}
