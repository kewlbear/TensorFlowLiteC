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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230422/TensorFlowLiteC.xcframework.zip", checksum: "fde5115eadfa4c600d0e3aa5000429f834cc73bbd771ca732a655ba1063e885b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230422/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b18886f5dc894fd4fce51184d55c0b555ad3ff93fe9a923c3277dc9ba572d7d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230422/TensorFlowLiteCMetal.xcframework.zip", checksum: "c7dadf07cef80e31bee203109aeb287959eb4eade1190013583b15766148d385"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
