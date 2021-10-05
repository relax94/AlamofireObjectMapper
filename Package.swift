// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3),
        .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "AlamofireObjectMapper",
            targets: ["AlamofireObjectMapper"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "4.9.1")),
        //.package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "3.5.1")),
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: [
                "Alamofire",
                // "ObjectMapper"
            ],
            path: "AlamofireObjectMapper",
            exclude: [
                "AlamofireObjectMapperTest",
                "Carthage"
            ]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
let version = Version(6, 2, 0)