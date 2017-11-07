// Generated using Sourcery 0.9.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


import Vapor

final class FrontendRoutes: RouteCollection {
    private let controller: FrontendController
    private let middlewares: [Middleware]

    internal init(
        controller: FrontendController,
        middlewares: [Middleware] = []
    ) {
        self.controller = controller
        self.middlewares = middlewares
    }

    func build(_ builder: RouteBuilder) throws {
        builder.grouped("").group(middleware: middlewares) { routes in
            // GET //
            routes.get("/", handler: controller.index)
        }
    }
}
