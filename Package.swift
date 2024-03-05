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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240304/TensorFlowLiteC.xcframework.zip", checksum: "aca6daf60aec7467eda2430ac13604d7489baff3711e126ad2e710741c8886c4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240304/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b427311e153e1f3da693b694b4cdad6f5f4a624cf5f6c40563dc91987f2f2eb2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240304/TensorFlowLiteCMetal.xcframework.zip", checksum: "ea1c63f298f399b66d0fdb392066102d8940d3eea1f1b06e2450408bdb8a727f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
