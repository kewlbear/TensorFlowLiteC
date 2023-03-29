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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230328/TensorFlowLiteC.xcframework.zip", checksum: "04d5b786901f2b941bb140d4a5f4780c9a105c750d2c6c60f2582727b601b7ae"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230328/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5b8d3a752ba8a6a8570b87263c8bc5edb7beacae7666c19b0e9a06e07200bbf5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230328/TensorFlowLiteCMetal.xcframework.zip", checksum: "a02c92466a64304d49d554f7de507904527362a5ecb40b440c4fc795fc0d4257"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
