import Vapor

// sourcery: controller
// sourcery: collection = Frontend
internal final class FrontendController {
    
    private let renderer: ViewRenderer
    
    internal init(renderer: ViewRenderer) {
        self.renderer = renderer
    }
    
    // sourcery: route, method = get, path = /
    internal func index(_ req: Request) throws -> ResponseRepresentable {
        return try self.renderer.make(
            "index",
            [],
            for: req
        )
    }
    
}
