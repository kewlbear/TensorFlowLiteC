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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240816/TensorFlowLiteC.xcframework.zip", checksum: "c3cf9eb3edcd73905a5d7550073dcff607cedc7135031328788f7dca7bd4ec6b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240816/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e7b5691bcadf263ea3795014aedbb4d72796ad6d3b072f9737ccf956018e023f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240816/TensorFlowLiteCMetal.xcframework.zip", checksum: "cb1b7eed89a40df56adb9c830c17f244efae57de63a400f573b268c53a89a363"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
