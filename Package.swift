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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230608/TensorFlowLiteC.xcframework.zip", checksum: "20b90b75fd411ba86d2c3fc85ce54271f064524e86eb312b9a828448e76df748"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230608/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4ee8c8180ef9a68f64a368bbcb6c89ccf8eacca17c33e11c3f097c66e2dfc067"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230608/TensorFlowLiteCMetal.xcframework.zip", checksum: "a46f9337ac2da62e9e23f06936562d6a5cfe0ffa6056f2abd8e0b8272c74775d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
