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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221107/TensorFlowLiteC.xcframework.zip", checksum: "036660761f3fc7e1780d89acca28a1216a6a18a47ec867c3126f9b76c44cc472"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221107/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f1ce13992fb626f6a3dd5fbff17d01b48abc4c7e472e69139c4792d59d85b3a7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221107/TensorFlowLiteCMetal.xcframework.zip", checksum: "59c90b63bada0f1aa79fd5f6bd47b01526aca404c82aac35043941712b964353"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
