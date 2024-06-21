import Fluent
import Vapor

func routes(_ app: Application) throws {
    // Landing page
    app.get { req -> EventLoopFuture<View> in
        return req.view.render("index")
    }

    // Product page for eggs
    app.get("eggs") { req -> EventLoopFuture<View> in
        return req.view.render("eggs")
    }
    
    // Cart page
    app.get("cart") { req -> EventLoopFuture<View> in
        return req.view.render("cart")
    }
}
