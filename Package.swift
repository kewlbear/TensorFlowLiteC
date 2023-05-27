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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230526/TensorFlowLiteC.xcframework.zip", checksum: "26deb79ec182ba38281738153a035461139811daa08b6e6bb7efb5fc0d5d3789"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230526/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0c385122a2d2ac2b5dad67fbf0721eaa70e012c060060daee0a0f9a5c9526dfa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230526/TensorFlowLiteCMetal.xcframework.zip", checksum: "bd819fb10e454b4e8604872b4d09f7cb9f3c320e7ffc431dbb441a7075a7f1b2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
