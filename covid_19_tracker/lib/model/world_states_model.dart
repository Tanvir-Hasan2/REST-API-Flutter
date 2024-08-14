/// updated : 1638272839619
/// cases : 262565677
/// todayCases : 161921
/// deaths : 5228276
/// todayDeaths : 3575
/// recovered : 237138321
/// todayRecovered : 209685
/// active : 20199080
/// critical : 83816
/// casesPerOneMillion : 33685
/// deathsPerOneMillion : 670.7
/// tests : 4296552311
/// testsPerOneMillion : 546236.69
/// population : 7865733700
/// oneCasePerPeople : 0
/// oneDeathPerPeople : 0
/// oneTestPerPeople : 0
/// activePerOneMillion : 2567.98
/// recoveredPerOneMillion : 30148.28
/// criticalPerOneMillion : 10.66
/// affectedCountries : 224



class WorldStatesModel {
  WorldStatesModel({
      this.updated, 
      this.cases, 
      this.todayCases, 
      this.deaths, 
      this.todayDeaths, 
      this.recovered, 
      this.todayRecovered, 
      this.active, 
      this.critical, 
      this.casesPerOneMillion, 
      this.deathsPerOneMillion, 
      this.tests, 
      this.testsPerOneMillion, 
      this.population, 
      this.oneCasePerPeople, 
      this.oneDeathPerPeople, 
      this.oneTestPerPeople, 
      this.activePerOneMillion, 
      this.recoveredPerOneMillion, 
      this.criticalPerOneMillion, 
      this.affectedCountries,});

  WorldStatesModel.fromJson(dynamic json) {
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }
  num? updated;
  num? cases;
  num? todayCases;
  num? deaths;
  num? todayDeaths;
  num? recovered;
  num? todayRecovered;
  num? active;
  num? critical;
  num? casesPerOneMillion;
  num? deathsPerOneMillion;
  num? tests;
  num? testsPerOneMillion;
  num? population;
  num? oneCasePerPeople;
  num? oneDeathPerPeople;
  num? oneTestPerPeople;
  num? activePerOneMillion;
  num? recoveredPerOneMillion;
  num? criticalPerOneMillion;
  num? affectedCountries;
WorldStatesModel copyWith({  num? updated,
  num? cases,
  num? todayCases,
  num? deaths,
  num? todayDeaths,
  num? recovered,
  num? todayRecovered,
  num? active,
  num? critical,
  num? casesPerOneMillion,
  num? deathsPerOneMillion,
  num? tests,
  num? testsPerOneMillion,
  num? population,
  num? oneCasePerPeople,
  num? oneDeathPerPeople,
  num? oneTestPerPeople,
  num? activePerOneMillion,
  num? recoveredPerOneMillion,
  num? criticalPerOneMillion,
  num? affectedCountries,
}) => WorldStatesModel(  updated: updated ?? this.updated,
  cases: cases ?? this.cases,
  todayCases: todayCases ?? this.todayCases,
  deaths: deaths ?? this.deaths,
  todayDeaths: todayDeaths ?? this.todayDeaths,
  recovered: recovered ?? this.recovered,
  todayRecovered: todayRecovered ?? this.todayRecovered,
  active: active ?? this.active,
  critical: critical ?? this.critical,
  casesPerOneMillion: casesPerOneMillion ?? this.casesPerOneMillion,
  deathsPerOneMillion: deathsPerOneMillion ?? this.deathsPerOneMillion,
  tests: tests ?? this.tests,
  testsPerOneMillion: testsPerOneMillion ?? this.testsPerOneMillion,
  population: population ?? this.population,
  oneCasePerPeople: oneCasePerPeople ?? this.oneCasePerPeople,
  oneDeathPerPeople: oneDeathPerPeople ?? this.oneDeathPerPeople,
  oneTestPerPeople: oneTestPerPeople ?? this.oneTestPerPeople,
  activePerOneMillion: activePerOneMillion ?? this.activePerOneMillion,
  recoveredPerOneMillion: recoveredPerOneMillion ?? this.recoveredPerOneMillion,
  criticalPerOneMillion: criticalPerOneMillion ?? this.criticalPerOneMillion,
  affectedCountries: affectedCountries ?? this.affectedCountries,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['updated'] = updated;
    map['cases'] = cases;
    map['todayCases'] = todayCases;
    map['deaths'] = deaths;
    map['todayDeaths'] = todayDeaths;
    map['recovered'] = recovered;
    map['todayRecovered'] = todayRecovered;
    map['active'] = active;
    map['critical'] = critical;
    map['casesPerOneMillion'] = casesPerOneMillion;
    map['deathsPerOneMillion'] = deathsPerOneMillion;
    map['tests'] = tests;
    map['testsPerOneMillion'] = testsPerOneMillion;
    map['population'] = population;
    map['oneCasePerPeople'] = oneCasePerPeople;
    map['oneDeathPerPeople'] = oneDeathPerPeople;
    map['oneTestPerPeople'] = oneTestPerPeople;
    map['activePerOneMillion'] = activePerOneMillion;
    map['recoveredPerOneMillion'] = recoveredPerOneMillion;
    map['criticalPerOneMillion'] = criticalPerOneMillion;
    map['affectedCountries'] = affectedCountries;
    return map;
  }

}