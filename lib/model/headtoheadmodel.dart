class HeadtoheadModel {
	Tournament? tournament;
	Season? season;
	RoundInfo? roundInfo;
	String? customId;
	Status? status;
	int? winnerCode;
	int? aggregatedWinnerCode;
	HomeTeam? homeTeam;
	HomeTeam? awayTeam;
	HomeScore? homeScore;
	HomeScore? awayScore;
	int? coverage;
	Time? time;
	Changes? changes;
	bool? hasGlobalHighlights;
	bool? hasXg;
	bool? hasEventPlayerStatistics;
	bool? hasEventPlayerHeatMap;
	int? detailId;
	bool? crowdsourcingDataDisplayEnabled;
	int? id;
	bool? crowdsourcingEnabled;
	int? previousLegEventId;
	int? startTimestamp;
	String? slug;
	bool? finalResultOnly;
	bool? feedLocked;
	bool? isEditor;

	HeadtoheadModel({this.tournament, this.season, this.roundInfo, this.customId, this.status, this.winnerCode, this.aggregatedWinnerCode, this.homeTeam, this.awayTeam, this.homeScore, this.awayScore, this.coverage, this.time, this.changes, this.hasGlobalHighlights, this.hasXg, this.hasEventPlayerStatistics, this.hasEventPlayerHeatMap, this.detailId, this.crowdsourcingDataDisplayEnabled, this.id, this.crowdsourcingEnabled, this.previousLegEventId, this.startTimestamp, this.slug, this.finalResultOnly, this.feedLocked, this.isEditor});

	HeadtoheadModel.fromJson(Map<String, dynamic> json) {
		tournament = json['tournament'] != null ? new Tournament.fromJson(json['tournament']) : null;
		season = json['season'] != null ? new Season.fromJson(json['season']) : null;
		roundInfo = json['roundInfo'] != null ? new RoundInfo.fromJson(json['roundInfo']) : null;
		customId = json['customId'];
		status = json['status'] != null ? new Status.fromJson(json['status']) : null;
		winnerCode = json['winnerCode'];
		aggregatedWinnerCode = json['aggregatedWinnerCode'];
		homeTeam = json['homeTeam'] != null ? new HomeTeam.fromJson(json['homeTeam']) : null;
		awayTeam = json['awayTeam'] != null ? new HomeTeam.fromJson(json['awayTeam']) : null;
		homeScore = json['homeScore'] != null ? new HomeScore.fromJson(json['homeScore']) : null;
		awayScore = json['awayScore'] != null ? new HomeScore.fromJson(json['awayScore']) : null;
		coverage = json['coverage'];
		time = json['time'] != null ? new Time.fromJson(json['time']) : null;
		changes = json['changes'] != null ? new Changes.fromJson(json['changes']) : null;
		hasGlobalHighlights = json['hasGlobalHighlights'];
		hasXg = json['hasXg'];
		hasEventPlayerStatistics = json['hasEventPlayerStatistics'];
		hasEventPlayerHeatMap = json['hasEventPlayerHeatMap'];
		detailId = json['detailId'];
		crowdsourcingDataDisplayEnabled = json['crowdsourcingDataDisplayEnabled'];
		id = json['id'];
		crowdsourcingEnabled = json['crowdsourcingEnabled'];
		previousLegEventId = json['previousLegEventId'];
		startTimestamp = json['startTimestamp'];
		slug = json['slug'];
		finalResultOnly = json['finalResultOnly'];
		feedLocked = json['feedLocked'];
		isEditor = json['isEditor'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.tournament != null) {
      data['tournament'] = this.tournament!.toJson();
    }
		if (this.season != null) {
      data['season'] = this.season!.toJson();
    }
		if (this.roundInfo != null) {
      data['roundInfo'] = this.roundInfo!.toJson();
    }
		data['customId'] = this.customId;
		if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
		data['winnerCode'] = this.winnerCode;
		data['aggregatedWinnerCode'] = this.aggregatedWinnerCode;
		if (this.homeTeam != null) {
      data['homeTeam'] = this.homeTeam!.toJson();
    }
		if (this.awayTeam != null) {
      data['awayTeam'] = this.awayTeam!.toJson();
    }
		if (this.homeScore != null) {
      data['homeScore'] = this.homeScore!.toJson();
    }
		if (this.awayScore != null) {
      data['awayScore'] = this.awayScore!.toJson();
    }
		data['coverage'] = this.coverage;
		if (this.time != null) {
      data['time'] = this.time!.toJson();
    }
		if (this.changes != null) {
      data['changes'] = this.changes!.toJson();
    }
		data['hasGlobalHighlights'] = this.hasGlobalHighlights;
		data['hasXg'] = this.hasXg;
		data['hasEventPlayerStatistics'] = this.hasEventPlayerStatistics;
		data['hasEventPlayerHeatMap'] = this.hasEventPlayerHeatMap;
		data['detailId'] = this.detailId;
		data['crowdsourcingDataDisplayEnabled'] = this.crowdsourcingDataDisplayEnabled;
		data['id'] = this.id;
		data['crowdsourcingEnabled'] = this.crowdsourcingEnabled;
		data['previousLegEventId'] = this.previousLegEventId;
		data['startTimestamp'] = this.startTimestamp;
		data['slug'] = this.slug;
		data['finalResultOnly'] = this.finalResultOnly;
		data['feedLocked'] = this.feedLocked;
		data['isEditor'] = this.isEditor;
		return data;
	}
}

class Tournament {
	String? name;
	String? slug;
	Category? category;
	UniqueTournament? uniqueTournament;
	int? priority;
	bool? isGroup;
	bool? isLive;
	int? id;

	Tournament({this.name, this.slug, this.category, this.uniqueTournament, this.priority, this.isGroup, this.isLive, this.id});

	Tournament.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		slug = json['slug'];
		category = json['category'] != null ? new Category.fromJson(json['category']) : null;
		uniqueTournament = json['uniqueTournament'] != null ? new UniqueTournament.fromJson(json['uniqueTournament']) : null;
		priority = json['priority'];
		isGroup = json['isGroup'];
		isLive = json['isLive'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['slug'] = this.slug;
		if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
		if (this.uniqueTournament != null) {
      data['uniqueTournament'] = this.uniqueTournament!.toJson();
    }
		data['priority'] = this.priority;
		data['isGroup'] = this.isGroup;
		data['isLive'] = this.isLive;
		data['id'] = this.id;
		return data;
	}
}

class Category {
	String? name;
	String? slug;
	Sport? sport;
	int? id;
	Country? country;
	String? flag;

	Category({this.name, this.slug, this.sport, this.id, this.country, this.flag});

	Category.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		slug = json['slug'];
		sport = json['sport'] != null ? new Sport.fromJson(json['sport']) : null;
		id = json['id'];
		country = json['country'] != null ? new Country.fromJson(json['country']) : null;
		flag = json['flag'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['slug'] = this.slug;
		if (this.sport != null) {
      data['sport'] = this.sport!.toJson();
    }
		data['id'] = this.id;
		if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
		data['flag'] = this.flag;
		return data;
	}
}

class Sport {
	String? name;
	String? slug;
	int? id;

	Sport({this.name, this.slug, this.id});

	Sport.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		slug = json['slug'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['slug'] = this.slug;
		data['id'] = this.id;
		return data;
	}
}

class UniqueTournament {
	String? name;
	String? slug;
	String? primaryColorHex;
	String? secondaryColorHex;
	Category? category;
	int? userCount;
	int? id;
	Country? country;
	bool? crowdsourcingEnabled;
	bool? hasPerformanceGraphFeature;
	bool? hasEventPlayerStatistics;
	bool? displayInverseHomeAwayTeams;

	UniqueTournament({this.name, this.slug, this.primaryColorHex, this.secondaryColorHex, this.category, this.userCount, this.id, this.country, this.crowdsourcingEnabled, this.hasPerformanceGraphFeature, this.hasEventPlayerStatistics, this.displayInverseHomeAwayTeams});

	UniqueTournament.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		slug = json['slug'];
		primaryColorHex = json['primaryColorHex'];
		secondaryColorHex = json['secondaryColorHex'];
		category = json['category'] != null ? new Category.fromJson(json['category']) : null;
		userCount = json['userCount'];
		id = json['id'];
		country = json['country'] != null ? new Country.fromJson(json['country']) : null;
		crowdsourcingEnabled = json['crowdsourcingEnabled'];
		hasPerformanceGraphFeature = json['hasPerformanceGraphFeature'];
		hasEventPlayerStatistics = json['hasEventPlayerStatistics'];
		displayInverseHomeAwayTeams = json['displayInverseHomeAwayTeams'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['slug'] = this.slug;
		data['primaryColorHex'] = this.primaryColorHex;
		data['secondaryColorHex'] = this.secondaryColorHex;
		if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
		data['userCount'] = this.userCount;
		data['id'] = this.id;
		if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
		data['crowdsourcingEnabled'] = this.crowdsourcingEnabled;
		data['hasPerformanceGraphFeature'] = this.hasPerformanceGraphFeature;
		data['hasEventPlayerStatistics'] = this.hasEventPlayerStatistics;
		data['displayInverseHomeAwayTeams'] = this.displayInverseHomeAwayTeams;
		return data;
	}
}

class Season {
	String? name;
	String? year;
	bool? editor;
	Country? seasonCoverageInfo;
	int? id;

	Season({this.name, this.year, this.editor, this.seasonCoverageInfo, this.id});

	Season.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		year = json['year'];
		editor = json['editor'];
		seasonCoverageInfo = json['seasonCoverageInfo'] != null ? new Country.fromJson(json['seasonCoverageInfo']) : null;
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['year'] = this.year;
		data['editor'] = this.editor;
		if (this.seasonCoverageInfo != null) {
      data['seasonCoverageInfo'] = this.seasonCoverageInfo!.toJson();
    }
		data['id'] = this.id;
		return data;
	}
}

class RoundInfo {
	int? round;
	String? name;
	String? slug;
	int? cupRoundType;

	RoundInfo({this.round, this.name, this.slug, this.cupRoundType});

	RoundInfo.fromJson(Map<String, dynamic> json) {
		round = json['round'];
		name = json['name'];
		slug = json['slug'];
		cupRoundType = json['cupRoundType'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['round'] = this.round;
		data['name'] = this.name;
		data['slug'] = this.slug;
		data['cupRoundType'] = this.cupRoundType;
		return data;
	}
}

class Status {
	int? code;
	String? description;
	String? type;

	Status({this.code, this.description, this.type});

	Status.fromJson(Map<String, dynamic> json) {
		code = json['code'];
		description = json['description'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['code'] = this.code;
		data['description'] = this.description;
		data['type'] = this.type;
		return data;
	}
}

class HomeTeam {
	String? name;
	String? slug;
	String? shortName;
	String? gender;
	Sport? sport;
	int? userCount;
	String? nameCode;
	bool? disabled;
	bool? national;
	int? type;
	int? id;
	Country? country;
	List<Null>? subTeams;
	TeamColors? teamColors;
	FieldTranslations? fieldTranslations;

	HomeTeam({this.name, this.slug, this.shortName, this.gender, this.sport, this.userCount, this.nameCode, this.disabled, this.national, this.type, this.id, this.country, this.subTeams, this.teamColors, this.fieldTranslations});

	HomeTeam.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		slug = json['slug'];
		shortName = json['shortName'];
		gender = json['gender'];
		sport = json['sport'] != null ? new Sport.fromJson(json['sport']) : null;
		userCount = json['userCount'];
		nameCode = json['nameCode'];
		disabled = json['disabled'];
		national = json['national'];
		type = json['type'];
		id = json['id'];
		country = json['country'] != null ? new Country.fromJson(json['country']) : null;
		
		teamColors = json['teamColors'] != null ? new TeamColors.fromJson(json['teamColors']) : null;
		fieldTranslations = json['fieldTranslations'] != null ? new FieldTranslations.fromJson(json['fieldTranslations']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['slug'] = this.slug;
		data['shortName'] = this.shortName;
		data['gender'] = this.gender;
		if (this.sport != null) {
      data['sport'] = this.sport!.toJson();
    }
		data['userCount'] = this.userCount;
		data['nameCode'] = this.nameCode;
		data['disabled'] = this.disabled;
		data['national'] = this.national;
		data['type'] = this.type;
		data['id'] = this.id;
		if (this.country != null) {
      data['country'] = this.country!.toJson();
    }
		
		if (this.teamColors != null) {
      data['teamColors'] = this.teamColors!.toJson();
    }
		if (this.fieldTranslations != null) {
      data['fieldTranslations'] = this.fieldTranslations!.toJson();
    }
		return data;
	}
}

class Country {
	String? alpha2;
	String? alpha3;
	String? name;

	Country({this.alpha2, this.alpha3, this.name});

	Country.fromJson(Map<String, dynamic> json) {
		alpha2 = json['alpha2'];
		alpha3 = json['alpha3'];
		name = json['name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['alpha2'] = this.alpha2;
		data['alpha3'] = this.alpha3;
		data['name'] = this.name;
		return data;
	}
}

class TeamColors {
	String? primary;
	String? secondary;
	String? text;

	TeamColors({this.primary, this.secondary, this.text});

	TeamColors.fromJson(Map<String, dynamic> json) {
		primary = json['primary'];
		secondary = json['secondary'];
		text = json['text'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['primary'] = this.primary;
		data['secondary'] = this.secondary;
		data['text'] = this.text;
		return data;
	}
}

class FieldTranslations {
	NameTranslation? nameTranslation;
	Country? shortNameTranslation;

	FieldTranslations({this.nameTranslation, this.shortNameTranslation});

	FieldTranslations.fromJson(Map<String, dynamic> json) {
		nameTranslation = json['nameTranslation'] != null ? new NameTranslation.fromJson(json['nameTranslation']) : null;
		shortNameTranslation = json['shortNameTranslation'] != null ? new Country.fromJson(json['shortNameTranslation']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.nameTranslation != null) {
      data['nameTranslation'] = this.nameTranslation!.toJson();
    }
		if (this.shortNameTranslation != null) {
      data['shortNameTranslation'] = this.shortNameTranslation!.toJson();
    }
		return data;
	}
}

class NameTranslation {
	String? ar;
	String? ru;

	NameTranslation({this.ar, this.ru});

	NameTranslation.fromJson(Map<String, dynamic> json) {
		ar = json['ar'];
		ru = json['ru'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['ar'] = this.ar;
		data['ru'] = this.ru;
		return data;
	}
}

class HomeScore {
	int? current;
	int? display;
	int? period1;
	int? period2;
	int? normaltime;
	int? aggregated;

	HomeScore({this.current, this.display, this.period1, this.period2, this.normaltime, this.aggregated});

	HomeScore.fromJson(Map<String, dynamic> json) {
		current = json['current'];
		display = json['display'];
		period1 = json['period1'];
		period2 = json['period2'];
		normaltime = json['normaltime'];
		aggregated = json['aggregated'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['current'] = this.current;
		data['display'] = this.display;
		data['period1'] = this.period1;
		data['period2'] = this.period2;
		data['normaltime'] = this.normaltime;
		data['aggregated'] = this.aggregated;
		return data;
	}
}

class Time {
	int? injuryTime1;
	int? injuryTime2;
	int? currentPeriodStartTimestamp;

	Time({this.injuryTime1, this.injuryTime2, this.currentPeriodStartTimestamp});

	Time.fromJson(Map<String, dynamic> json) {
		injuryTime1 = json['injuryTime1'];
		injuryTime2 = json['injuryTime2'];
		currentPeriodStartTimestamp = json['currentPeriodStartTimestamp'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['injuryTime1'] = this.injuryTime1;
		data['injuryTime2'] = this.injuryTime2;
		data['currentPeriodStartTimestamp'] = this.currentPeriodStartTimestamp;
		return data;
	}
}

class Changes {
	List<String>? changes;
	int? changeTimestamp;

	Changes({this.changes, this.changeTimestamp});

	Changes.fromJson(Map<String, dynamic> json) {
		changes = json['changes'].cast<String>();
		changeTimestamp = json['changeTimestamp'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['changes'] = this.changes;
		data['changeTimestamp'] = this.changeTimestamp;
		return data;
	}
}

