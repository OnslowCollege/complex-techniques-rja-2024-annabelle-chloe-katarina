import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render("index", ["title": "Hello Vapor!"])
    }

    app.get("hello") { req async -> String in
        return "Hello, world!"
    }

    // app.get("dostuff") { req async -> String in 
    //     "Yo yo yo"
    // }

    try app.register(collection: TodoController())
}