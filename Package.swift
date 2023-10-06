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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231005/TensorFlowLiteC.xcframework.zip", checksum: "b30a93f22ef299a50ac6981c7de75210e994acc0026f07aa98f89bb1410dc614"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231005/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1094a0d3e0ff2e829dd457bbdaa0250000627aef0c37a2234fdaf4f37cbe2630"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231005/TensorFlowLiteCMetal.xcframework.zip", checksum: "5e9444dfe6d2d75c6eb6095d48a2fe8f488c90abb3acf5ecfebc5bcaccd91b9e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
