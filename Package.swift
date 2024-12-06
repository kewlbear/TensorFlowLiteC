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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteC.xcframework.zip", checksum: "099bd0242be662480e0537c33733c686c6016777ee8a46e98a9edfa9b93b663e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4ea49c36720caebb38524a7f48e4ae5bab9ee029350598cfa6c2d14e959ac249"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241205/TensorFlowLiteCMetal.xcframework.zip", checksum: "85e85df462d729224934fd1a556dfd788fb3a5dd9d0f2bafa729e588c7271ceb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
