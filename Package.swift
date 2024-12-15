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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteC.xcframework.zip", checksum: "0cf985f286d723ed24bc29f43d10957d028cccb9bae5ba57709a4a816fb51a9a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8ea742b9bb29708c957539550c6b4a59bbf1e1be41d644013043524e279ea747"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241214/TensorFlowLiteCMetal.xcframework.zip", checksum: "96d5cdbf831671b4b2ebb6b0211c06b513170c842af5302b1db24893886223f6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
