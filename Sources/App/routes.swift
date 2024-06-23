import Fluent
import Vapor

func routes(_ app: Application) throws {
    // Define a route for the login page
    app.get("login") { req -> EventLoopFuture<View> in
        // Render the `index.leaf` template
        return req.view.render("index")
    }

}
