//
//  Todo.swift
//  XCUITodo


import Foundation

class Todo {
    let title: String
    let due: Date
    var finished: Bool

    func toggleFinished() {
        finished = !finished
    }

    init(title: String, due: Date, finished: Bool) {
        self.title = title
        self.due = due
        self.finished = finished
    }

    static func defaultList() -> [Todo] {
        let titles = "Do something,Do anything,Do be do be do,Stuff and things,Like y'know?".components(separatedBy: ",")

        let Day: TimeInterval = 60 /*s/m*/ * 60 /*m/h*/ * 24 /*h/day => s/day*/
        let now = Date()
        let delta = 10*Day
        let dates = [now
            , now.addingTimeInterval(-delta)
            , now.addingTimeInterval(+delta)]

        let finishEveryNth = 5

        let defaults = titles.enumerated().map {
            Todo(title: $1, due: dates[$0 % dates.count], finished: $0 % finishEveryNth == 0)
        }
        return defaults
    }
}
