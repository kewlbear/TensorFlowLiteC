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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221016/TensorFlowLiteC.xcframework.zip", checksum: "8366efb5e3704f69254c6aa27478177632fa51e95c4cfe4b404350ffeb0e7cbd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221016/TensorFlowLiteCCoreML.xcframework.zip", checksum: "707a2c64f1a2b2c77475e770a14576934891ba0969f859f783520dcbb1c3cfcd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221016/TensorFlowLiteCMetal.xcframework.zip", checksum: "0ecfebabf31adc7ba7716a3fabf3aa8790fba0d0bc60bd39b6b5d80035e55d14"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
