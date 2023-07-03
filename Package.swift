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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230702/TensorFlowLiteC.xcframework.zip", checksum: "8782e8ec2f866390a535589482d4c1c03ace8afd70540161546a6efc2de75c6d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230702/TensorFlowLiteCCoreML.xcframework.zip", checksum: "52b6c274f0aefa0b63dfdc0f8509ec9e659f6218ef5fc189fe212e88ebdcad3b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230702/TensorFlowLiteCMetal.xcframework.zip", checksum: "422547d4f202a8d82e98e0409ba2c0d5d29d263515cc300d17a2548d952a681f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
