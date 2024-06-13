app.get("hello") { req -> EventLoopFuture<View> in
    return req.view.render("hello", ["name": "Leaf"])
}

// or

app.get("hello") { req async throws -> View in
    return try await req.view.render("hello", ["name": "Leaf"])
}