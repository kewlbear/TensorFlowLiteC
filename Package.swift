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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240529/TensorFlowLiteC.xcframework.zip", checksum: "be38d8eb1caeeb041a8895fbb7403be4a764480d2636351804ff1a61c1c1de27"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240529/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d1886a09c48deee2edade55c4459e749d094f082215f89cce0f4ca16c83e79f0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240529/TensorFlowLiteCMetal.xcframework.zip", checksum: "1edfb7d2131655e2bf7e96aae6733c47cbeb92e89b065d90dd87c450f6d35400"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
