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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteC.xcframework.zip", checksum: "940c53d81570566f08ffc2d5b54fa730e8043a30b9f03ab8b19720969d091ad6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteCCoreML.xcframework.zip", checksum: "03440ca08b1cbd7a2ded0e16d8345f62c7038a5b3f04071433bf1090f66c6146"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250530/TensorFlowLiteCMetal.xcframework.zip", checksum: "d6875ceba0000082ecc7acb19981307e1cd12bca22740a26503a432c07c29ad0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
