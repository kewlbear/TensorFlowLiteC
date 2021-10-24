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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211023/TensorFlowLiteC.xcframework.zip", checksum: "67e60b47761c35a642bf12ff0dc28c17ba27753a44dd02fcfff35a05873a28ad"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211023/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4ed025dd98a11284e720a544909320f7d680afbcff666988d588ccd9b984bb39"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211023/TensorFlowLiteCMetal.xcframework.zip", checksum: "37335240879fedabf09322f6ce82f246d90aba8232a2afd3b996f65327097cfe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
