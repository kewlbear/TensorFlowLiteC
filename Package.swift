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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210430/TensorFlowLiteC.xcframework.zip", checksum: "e092955bbcf49f6d838492665e5e3bcb11a3a38aefec5cac9b2266538f04b32c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210430/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f55e9a803814a49c63f4ad0f33585360a2d40a57c5163007e7a62ccf249ab80a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210430/TensorFlowLiteCMetal.xcframework.zip", checksum: "3ce406056041d7815d701553290d1604e003254c02ad57fcb53516647b649048"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
