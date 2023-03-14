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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230313/TensorFlowLiteC.xcframework.zip", checksum: "1cc89e24ae531e72f4b8a4058bc46be6dcb264bf68cec1913e47ba49694375d2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230313/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5539af892aeaedbf7f39b2395a721b741a0e592c549bb3457aacbdbff3d7184"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230313/TensorFlowLiteCMetal.xcframework.zip", checksum: "d78a3350ec644302fce4b3af80e1781f95dfab6eb0a0d208b3366f7bb8c3facf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
