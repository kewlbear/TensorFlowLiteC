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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210818/TensorFlowLiteC.xcframework.zip", checksum: "1da084fa42abded62dea6ef4718f3781966c78a3ebe24974a66f2d8b75c3f682"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210818/TensorFlowLiteCCoreML.xcframework.zip", checksum: "99e16a1b9c96850ab2fdb5620effbf4ab39c07c5d04801b87438e6f947cd6bff"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210818/TensorFlowLiteCMetal.xcframework.zip", checksum: "8282d46e1dcb31fdf7776ba07f399a8d07d040ed6910c1c2d17cae8c4cecf40f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
