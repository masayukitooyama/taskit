"use strict"
angular.module("app").factory "date_util", () ->
  DAY_OF_WEEK = ["日","月","火","水","木","金","土"]

  getDayList: () ->
    arr = []
    for i in [1..31]
      arr.push i

  getDate: (month, day) ->
    month + "月" + day + "日"

  getDaysOfWeek: (num) ->
    DAY_OF_WEEK[num]
