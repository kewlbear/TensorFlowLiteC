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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230824/TensorFlowLiteC.xcframework.zip", checksum: "a751490ba6b6459f9b253f346fe07ebeedf86a99b489fc69e5fc13ae7797076d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230824/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0043d9ee6396b2f12621c70f7a5859273a3ed02a319d3221ac546c94a893eae6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230824/TensorFlowLiteCMetal.xcframework.zip", checksum: "6949223f1989b2b317d4c4fb59580df25347643991f8d7f8e1f2f07f968a2a30"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
