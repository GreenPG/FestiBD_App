struct WorkshopDTO: Content {

    var id: UUID?
    var name: String
    var startTime: Date
    var endTime: Date
    var category_id: UUID?
    var category_name: String
    var capacity: Int
    var totalSubscribers: Int
    var description: String
}