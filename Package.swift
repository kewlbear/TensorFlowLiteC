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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211011/TensorFlowLiteC.xcframework.zip", checksum: "b320d4e6c7914c25f9d305490d989b3c9209177238f538b34820e47bc21db1c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211011/TensorFlowLiteCCoreML.xcframework.zip", checksum: "44fae29e2336a781546d552e6c3efaf9315faab4552c75ba09f853f0b0423a7e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211011/TensorFlowLiteCMetal.xcframework.zip", checksum: "79a897d201b414c7c48e5c6d1d560d83754d8d0ac78bb5217e919baab593cce9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
