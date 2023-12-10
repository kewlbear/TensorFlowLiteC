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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231209/TensorFlowLiteC.xcframework.zip", checksum: "f3bbdb9d81a9efc1df271dc96ae8f36a4e2e4d697f57a37cb22cda13a556afec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231209/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7859e58389cf9e2f2f64b6559e471d27d744fe96036ee5adb79b8bc786aa93ce"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231209/TensorFlowLiteCMetal.xcframework.zip", checksum: "38e2b7756b9236c9af10934f68ee123fa3003a6158c61125cbdec72b7779892d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
