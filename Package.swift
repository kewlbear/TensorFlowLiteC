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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteC.xcframework.zip", checksum: "99a3542a73a358b92a7b42550bef5b97dea4bd2a04f9ec054d7dad02b83cea18"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5588a0df7e19a7f4126296812cd5e9572986b823f1296f104fe9d91e9d307bd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250618/TensorFlowLiteCMetal.xcframework.zip", checksum: "4f267bbf0b1945275f842a497b603e153927f03ffe93041f4bb7d02c6d691ca6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
