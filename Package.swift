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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210809/TensorFlowLiteC.xcframework.zip", checksum: "67a6a6d495b2950c0a7d8027db6cf2888ee576779377750becf4826753b8f747"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210809/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c5f0927c92a1149172b3fe24362383bbef9a941b19737e55f12702ad5bc94774"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210809/TensorFlowLiteCMetal.xcframework.zip", checksum: "1ea97ef5f1e3ea4dd61f994c478abbf1e77c96a2eaecec3553484f8ebbd253d2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
