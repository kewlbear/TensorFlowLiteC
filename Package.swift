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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteC.xcframework.zip", checksum: "2f639fe3a9fbd6b13d3d80c6069c0e26eccf10952497033d233c153ba81545d8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b8520c9e440754f5ece91ea3f6f378f074735a486145c16745bd4cf93cac49c8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250418/TensorFlowLiteCMetal.xcframework.zip", checksum: "b9a953b9ef317caa7e399ac4be58283de645e3c4df4bf9799ddaf60f9e18d34e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
