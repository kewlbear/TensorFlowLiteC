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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.6.0/TensorFlowLiteC.xcframework.zip", checksum: "a605af240d5e6984427458f4be9e6523cd03846405c23846bda4ef8b8cb6e588"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.6.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf60b43e17a9223d5e8cfa927badf771b8520765ec56a107a85f8713512ac3bd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.6.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "353d3884ed2718eceb1be92cbe2fb154ee2b237387a6557143ea202d675fdd47"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
