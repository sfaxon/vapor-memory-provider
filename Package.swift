import PackageDescription

let package = Package(
    name: "VaporMemory",
    dependencies: [
      .Package(url: "https://github.com/vapor/fluent.git", majorVersion: 1),
      .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1)
    ]
)
