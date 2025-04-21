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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteC.xcframework.zip", checksum: "b2d5012c57a849ee148cbd806fed3297b5214b5bd71ede887b614502da0a3fbc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteCCoreML.xcframework.zip", checksum: "15a306aeaa6293bdd9a8870ff9ac108d9ffa599cf874eeada7eb7a6cf64367ea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250420/TensorFlowLiteCMetal.xcframework.zip", checksum: "d5304d59b4adfad40a4b888c13f5217afa07e833c52305050b9e42f7b3332985"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
