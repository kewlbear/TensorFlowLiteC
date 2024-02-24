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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240223/TensorFlowLiteC.xcframework.zip", checksum: "b468eb29472f2a0adf7fd185cc33f741a5e0251153cdf053013ad95f4300ccb2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8f6483d38a97703e993ab2aabac3ef15a52e3de2e73aa8e43ba22fce97919ddb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240223/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef4aa94ceda771512cec6c791a3782f0bc2c78903661304cb2add0c952698410"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
