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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230322/TensorFlowLiteC.xcframework.zip", checksum: "2294448d79fc7380899cee10a045620c947499ffb6607fed02edddf508dffc6a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230322/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6436a0de173dfaf95a850428cbd176b035f1ce7d96972cdb26ede16fcddf581e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230322/TensorFlowLiteCMetal.xcframework.zip", checksum: "84c6085890a26d461ed43ff524886ea7bf20e5ba7e1b8cc2279318616da0c96d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
