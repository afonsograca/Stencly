import ArgumentParser

struct StenclyCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "stencly",
        abstract: "Render stencil templates using a data source.",
        subcommands: [RenderCommand.self])

    @Flag(name: .shortAndLong, help: "Prints the version and exit")
    var version: Bool

    func run() throws {
        if version {
            throw CleanExit.message(VERSION)
        }
    }
}
