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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230509/TensorFlowLiteC.xcframework.zip", checksum: "c0b147cc8b6874395d3633e9295f19a5b5c760709653537fc78327a247f478d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230509/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a3beea990b9fcf942daea54186245ec4c2a73b386305ad88fb96f5c155c07127"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230509/TensorFlowLiteCMetal.xcframework.zip", checksum: "5aa084a5b96368d84de2a18599d14094e3dee1d0cf766b088a5c9148aa5de258"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
