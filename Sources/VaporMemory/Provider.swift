import Vapor
import Fluent

public typealias VaporMemoryDriver = Fluent.MemoryDriver

public final class Provider: Vapor.Provider {
    public let provided: Providable

    /**
     Fluent.MemoryDriver database driver created by the provider.
     */
    public let driver: VaporMemoryDriver

    /**
     Creates a VaporMemoryDriver provider. No config needed.
     */
    public convenience init(config: Config) throws {
        try self.init()
    }

    /**
     Create the driver.
     */
    public init() throws {

        let driver = MemoryDriver()

        self.driver = driver

        let database = Database(driver)
        provided = Providable(database: database)
    }

    /**
     Called after the Droplet has completed
     initialization and all provided items
     have been accepted.
     */
    public func afterInit(_ drop: Droplet) {
    }

    /**
     Called before the Droplet begins serving
     which is @noreturn.
     */
    public func beforeRun(_ drop: Droplet) {
    }
}
