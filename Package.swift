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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240226/TensorFlowLiteC.xcframework.zip", checksum: "a918506282c8a1950f9321a3707940b754c88f1f4e12fa9ee293e57c83ce8570"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240226/TensorFlowLiteCCoreML.xcframework.zip", checksum: "534bea129a233dc138f0a3e182a29280cf99afb6dbaee9a6c0385956bf02af51"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240226/TensorFlowLiteCMetal.xcframework.zip", checksum: "bf78299542fa0ba77f640199c2520c016b85e2f115ebb54f02a8214f0cc0e3c2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
