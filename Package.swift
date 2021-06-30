// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210629/TensorFlowLiteC.xcframework.zip", checksum: "bde2884b635b74b81540c56f09d3702d2cfdcf8f3fc56fa17b87d33bdfbe127e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210629/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d21fe732af6eeb315e0ad66f28397d0a64878904b75642ecfcd10add4a750d16"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210629/TensorFlowLiteCMetal.xcframework.zip", checksum: "42c1997c15f276ff0ddeb850859bdf68dd112208c5f8433e0b0868adaee82181"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
