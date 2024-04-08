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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240407/TensorFlowLiteC.xcframework.zip", checksum: "1c83740b6c415c80eaf36a2872a369a5a743d505aeb6584a8c5edd0dadbe851c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240407/TensorFlowLiteCCoreML.xcframework.zip", checksum: "610c7f33e3365ee244b98cc329ac44c5e5186492a37ed1635cf922bc44ed7e95"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240407/TensorFlowLiteCMetal.xcframework.zip", checksum: "91bd7632058da278939effef3257a4f3a110b82284550409011b4d299c11e513"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
