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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230724/TensorFlowLiteC.xcframework.zip", checksum: "4b0a9f764d8243babc6bbd328480bc2f036b05279381302e3283c602219bb173"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230724/TensorFlowLiteCCoreML.xcframework.zip", checksum: "48a4a5476cf09b21fae23c3dc131bf1595fff5cfa78e39c023ac0c902eb1444b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230724/TensorFlowLiteCMetal.xcframework.zip", checksum: "c3bdefbd26a32d1e379f7e995586936b7c66ad0dbdc588d43c79c893661b5dd3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
