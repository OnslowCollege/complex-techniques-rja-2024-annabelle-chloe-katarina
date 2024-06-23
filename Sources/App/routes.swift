import Fluent
import Vapor

struct LoginController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        routes.get("Login Form Design", use: loginHandler)
    }

    func loginHandler(req: Request) throws -> EventLoopFuture<View> {
        return req.view.render("login")
    }
}
