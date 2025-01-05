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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteC.xcframework.zip", checksum: "6ab3235edb23309bbc658430ea87bd422853978be8c7d3db7e3326537a1d462d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6803d7eb721ca3753d35790f37833dc76d93034da17689ba3426a065189a5bc6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250104/TensorFlowLiteCMetal.xcframework.zip", checksum: "f7b5ea354d075cc5b172e07b6f04e4ea7fc4e2b371692567415b8c4cd9adb5a3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
