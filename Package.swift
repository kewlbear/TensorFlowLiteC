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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteC.xcframework.zip", checksum: "aa055c442d023e33375d1a7ba1a9cc2dc85a52c1248086eefb7abcdd0e081bd6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "07436c3f43cccc4be5cf2dfc27a710bd99596ede243527c8bf2515a0c7409705"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241226/TensorFlowLiteCMetal.xcframework.zip", checksum: "e6fedf032eff07cf1296429d9e176003be94625e87b663ba3bca7696a4c90ff0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
