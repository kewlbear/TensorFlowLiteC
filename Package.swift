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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteC.xcframework.zip", checksum: "384e03b128b9ba120a7f41b21fb8801ff451d914dbf89998d445453421e00f88"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5242a13c880fdf4319a7a330a48605f8a9ea1c185ad07704240bf7d6e738a220"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250208/TensorFlowLiteCMetal.xcframework.zip", checksum: "a6488882b74d698c3f713e995c04474f0fd45d150043e87dd074c8ec55b8684b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
