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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteC.xcframework.zip", checksum: "f6604ce3a3ad705c8b99f9a2ba46c13f47c6e7105c93c19dce6dcb873c7fa5cb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9f4109e3181a887db40617ba337424574ade883e5d46a7f4791287eebece5ed1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241229/TensorFlowLiteCMetal.xcframework.zip", checksum: "0aa27e66dace48cfa735c3569f3cc1db19c49cfdc1dcf3ff92db569cdd7b70e8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
