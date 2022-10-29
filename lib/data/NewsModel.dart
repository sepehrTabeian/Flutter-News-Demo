import 'package:equatable/equatable.dart';

/// live : {"title":"Closing Bell","description":"A guide through the most important hour of the Wall Street trading day, and taking a close-up look at how the markets are moving, what's driving them and how investors are reacting; coverage includes reports from the CME Group, NASDAQ and the NYSE.","start_time":"3:00 PM","url":"http://www.cnbc.com/live-tv","guid":"00003MA000000141712T0217222000"}
/// coming_up : [{"title":"2022 Winter Olympics","description":"Canada takes on Sweden in a men's curling semifinal matchup at the 2022 Beijing Olympics. Niklas Edin's Swedish rink earned a 7-4 decision over Brad Gushue and the Canadians during the round robin. Sweden won bronze in 2014 and silver in 2018.","start_time":"5:00 PM","url":""},{"title":"Shepard Smith","description":"\"The News With Shepard Smith\" is CNBC's nightly newscast providing deep, non-partisan coverage and perspective on the day's most important stories.","start_time":"7:00 PM","url":""},{"title":"2022 Winter Olympics","description":"The U.S. (5-4) faces Great Britain (8-1) in the Olympic men's curling semifinals. Bruce Mouat's British rink stands in the way of John Shuster's bid for a second straight American gold. The U.S. handed Great Britain its lone loss in the round robin.","start_time":"8:00 PM","url":""},{"title":"Shark Tank","description":"Two brothers introduce a product they claim will solve the issue of pet shedding; an entrepreneur believes he has invented a better way to carry a child's car seat; a sophisticated version of a traditional snack.","start_time":"11:00 PM","url":"https://www.cnbc.com/id/101229255"},{"title":"Shepard Smith","description":"\"The News With Shepard Smith\" is CNBC's nightly newscast providing deep, non-partisan coverage and perspective on the day's most important stories.","start_time":"12:00 AM","url":""},{"title":"Shark Tank","description":"A bike lighting system; clothing with reinforced knees and built-in squeakers for crawling babies; a shoe buffing pad that attaches to a power drill; modular shoelaces.","start_time":"1:00 AM","url":"https://www.cnbc.com/id/101229255"},{"title":"Dateline","description":"The sister of a man who died after robbing a bank when a bomb that was placed around his neck detonated talks about the case.","start_time":"2:00 AM","url":""},{"title":"Dateline","description":"The sister of a man who died after robbing a bank when a bomb that was placed around his neck detonated talks about the case.","start_time":"3:00 AM","url":""},{"title":"Shepard Smith","description":"\"The News With Shepard Smith\" is CNBC's nightly newscast providing deep, non-partisan coverage and perspective on the day's most important stories.","start_time":"4:00 AM","url":""},{"title":"Worldwide Exchange","description":"Delivering essential, actionable information and analysis for anyone who wants to be part of the global business conversation; preparing CNBC's worldwide audience with a smart take on overnight U.S. news and live international market action.","start_time":"5:00 AM","url":"https://www.cnbc.com/id/15838355"},{"title":"Squawk Box","description":"The biggest names in business and politics tell their most important stories in this ultimate pre-market morning news and talk program; a must see for everyone, from the professional trader to the casual investor.","start_time":"6:00 AM","url":"https://www.cnbc.com/id/15838368"}]
/// currDate : "2022-02-17"

class NewsModel extends Equatable {
  NewsModel({
      this.live, 
      this.comingUp, 
      this.currDate,});

  NewsModel.fromJson(dynamic json) {
    live = json['live'] != null ? Live.fromJson(json['live']) : null;
    if (json['coming_up'] != null) {
      comingUp = [];
      json['coming_up'].forEach((v) {
        comingUp?.add(ComingUp.fromJson(v));
      });
    }
    currDate = json['currDate'];
  }
  Live? live;
  List<ComingUp>? comingUp;
  String? currDate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (live != null) {
      map['live'] = live?.toJson();
    }
    if (comingUp != null) {
      map['coming_up'] = comingUp?.map((v) => v.toJson()).toList();
    }
    map['currDate'] = currDate;
    return map;
  }

  @override
  List<Object?> get props => [live,comingUp,currDate];

}

/// title : "2022 Winter Olympics"
/// description : "Canada takes on Sweden in a men's curling semifinal matchup at the 2022 Beijing Olympics. Niklas Edin's Swedish rink earned a 7-4 decision over Brad Gushue and the Canadians during the round robin. Sweden won bronze in 2014 and silver in 2018."
/// start_time : "5:00 PM"
/// url : ""

class ComingUp extends Equatable{
  ComingUp({
      this.title, 
      this.description, 
      this.startTime, 
      this.url,});

  ComingUp.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    startTime = json['start_time'];
    url = json['url'];
  }
  String? title;
  String? description;
  String? startTime;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['start_time'] = startTime;
    map['url'] = url;
    return map;
  }

  @override
  List<Object?> get props => [title,description,startTime,url];

}

/// title : "Closing Bell"
/// description : "A guide through the most important hour of the Wall Street trading day, and taking a close-up look at how the markets are moving, what's driving them and how investors are reacting; coverage includes reports from the CME Group, NASDAQ and the NYSE."
/// start_time : "3:00 PM"
/// url : "http://www.cnbc.com/live-tv"
/// guid : "00003MA000000141712T0217222000"

class Live extends Equatable {
  Live({
      this.title, 
      this.description, 
      this.startTime, 
      this.url, 
      this.guid,});

  Live.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    startTime = json['start_time'];
    url = json['url'];
    guid = json['guid'];
  }
  String? title;
  String? description;
  String? startTime;
  String? url;
  String? guid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['start_time'] = startTime;
    map['url'] = url;
    map['guid'] = guid;
    return map;
  }

  @override
  List<Object?> get props => [title,description,startTime,url,guid];

}