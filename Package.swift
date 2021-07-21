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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210720/TensorFlowLiteC.xcframework.zip", checksum: "ad1af742ba486a335638ca0a538de0c6f4fe5d1385b9518aa74d5163aaa12445"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210720/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5696628f7bc4ba78dc6df74a202e47bd30349e9017e6ec08e71d1d0a4a4a5289"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210720/TensorFlowLiteCMetal.xcframework.zip", checksum: "bee5e24d5e65d6f4da74133d85699760bc4fe207d2bf3ef922cdd1efbccade48"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
