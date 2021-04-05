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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210404/TensorFlowLiteC.xcframework.zip", checksum: "43bf8fe82fa8a88da873f4b3e4ef74020a4308d7e0cdd4f1802f8854f3a2bdf0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210404/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0b9d3363fb217e85532e0c98416aaa9be647f880b606348ee8799df90c271b46"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210404/TensorFlowLiteCMetal.xcframework.zip", checksum: "e478b666029fd30f1734f07a0fd409001f2410d3d121fd82a8f7d4b9832b5ed5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
