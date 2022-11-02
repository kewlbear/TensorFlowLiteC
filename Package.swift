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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221101/TensorFlowLiteC.xcframework.zip", checksum: "dd032f6bef32d9b8fd9067e7fe9e443d6cd0886c3ad6042412e86afc51684d3c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221101/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1d264bd3442c7414df514ee20089a414376024e00fcf4550b547906688e9f355"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221101/TensorFlowLiteCMetal.xcframework.zip", checksum: "46b692756d210e2017cb522976ff0efbead951a15e302236b747a607b3e544b7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
