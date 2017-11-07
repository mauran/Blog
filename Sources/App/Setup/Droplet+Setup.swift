@_exported import Vapor

extension Droplet {
    public func setup() throws {
        try setupRoutes()
    }

    /// Configure all routes
    private func setupRoutes() throws {
        try self.collection(
            FrontendRoutes(
                controller: FrontendController(
                    renderer: self.view
                )
            )
        )
    }
}
