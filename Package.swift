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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteC.xcframework.zip", checksum: "1ea501007f9655f6b18768222eb8bdb93754494cdfc81735f5d4321778678d0d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1e2655afa615214150223b1aaa5a31d48e29af389c8239adf9d535649feb9d0c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "fbecd61bbf39bf0dd6e8ae41e13a47bc3a39448973b6d6be037371581c246369"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
