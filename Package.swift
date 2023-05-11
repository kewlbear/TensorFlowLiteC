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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230510/TensorFlowLiteC.xcframework.zip", checksum: "6fe90ac3f4793d79a4920788300db0f87549af42048b8c5e961635d47a3b526a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230510/TensorFlowLiteCCoreML.xcframework.zip", checksum: "318556b6c24ef544946dc88d34323d80d910161a8d2a21918ab9d1142e7853c8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230510/TensorFlowLiteCMetal.xcframework.zip", checksum: "2cbe94051cefd018b3f0a5b98fc2396741e4b30fbe913fe1d79d17b798be7667"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
