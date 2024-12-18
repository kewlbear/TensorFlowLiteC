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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteC.xcframework.zip", checksum: "66b1e0ad99440a27d0c2dc3cd5c18973c8b27dee49badbb0ce45de5f6703571d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dbeda876c4d9075bfb192a7006fd47c6f41f5d61ca52856c753561adc9a9386b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241217/TensorFlowLiteCMetal.xcframework.zip", checksum: "3e5412055c27f9565ffe7ce4b00727b215d08264c45e7efd51509cae8e131efc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
