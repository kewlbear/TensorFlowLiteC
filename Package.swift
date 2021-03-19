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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteC.zip", checksum: "b53c79c7f2d490cec523c2777f8d8cab78276f379da021eb343db898d5c68a2c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCCoreML.zip", checksum: "b53c79c7f2d490cec523c2777f8d8cab78276f379da021eb343db898d5c68a2c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210321/TensorFlowLiteCMetal.zip", checksum: "b53c79c7f2d490cec523c2777f8d8cab78276f379da021eb343db898d5c68a2c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
