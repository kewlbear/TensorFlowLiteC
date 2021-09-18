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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210917/TensorFlowLiteC.xcframework.zip", checksum: "d81fc9afd7a3552ad0a95e4f06f77f1beff34d3380f98d6d3d786244821d298f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210917/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f0df7d7690aee1060e70d299c66d29aeca0ad851bb6ec4734ab1b140ce595cb3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210917/TensorFlowLiteCMetal.xcframework.zip", checksum: "874970df5adb230e382df1d69c504e0e8010837f97cd70e9049743c5b8d7bb4a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
