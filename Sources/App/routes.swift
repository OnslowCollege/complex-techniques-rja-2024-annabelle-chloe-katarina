import Fluent
import Vapor

func routes(_ app: Application) throws {
    // Route for the login page
    app.get("login") { req -> EventLoopFuture<View> in
        return req.view.render("login")
    }
}

