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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211124/TensorFlowLiteC.xcframework.zip", checksum: "1097efc6f4ca846f0e3fdb157906b9ac0938cd30f4d3641a39baeae505ca6ac0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0e6010c56d823f4ef6b1067f881b2a9a35d0164fb5b705f39bbba20eff114cf7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211124/TensorFlowLiteCMetal.xcframework.zip", checksum: "d41aa39120df526ecb7d001db6c17c1e53b9d1202687bfd32cbe784681d96f28"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
