"use strict"
angular.module("app").factory "time_util", () ->

  toHour: (hour, minutes) ->
    hour + minutes / 60

  toMinutes: (hour, minutes) ->
    hour * 60 + minutes

  formatHHMM: (hour, minutes) ->
    h = ('0' + hour).slice(-2)
    m = ('0' + minutes).slice(-2)
    h + ':' + m

  formatHHMMByMinutes: (minutes) ->
    m = minutes % 60
    h = (minutes - m) / 60
    this.formatHHMM(h, m)

  reFormatHHMM: (hour, minutes) ->
    sum = hour * 60 + minutes
    this.formatHHMMByMinutes(sum)

  getStartHours: () ->
    hours = []
    for i in [0..33]
      hours[i] =
        value: i
        label: ("0" + i).slice(-2)
    return hours

  getEndHours: () ->
    hours = []
    for i in [0..47]
      hours[i] =
        value: i
        label: ("0" + i).slice(-2)
    return hours

  getBreakHours: () ->
    hours = []
    for i in [0..12]
      hours[i] =
        value: i
        label: ("0" + i).slice(-2)
    return hours

  getMinutes: () ->
    minutes = []
    for i in [0..3]
      minutes[i] =
        value: i * 15
        label: ("0" + i * 15).slice(-2)
    return minutes
