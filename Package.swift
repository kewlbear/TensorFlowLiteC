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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteC.xcframework.zip", checksum: "8ce77aaf4aaf1b31893848341a9ed50cd1b5a15b92f9b7be6b295b1c760b1527"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9f25cc452444ab545b68e1a3a429648edff6c1f43aef3ecfb367eba45ec9cc9f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/2.4.0/TensorFlowLiteCMetal.xcframework.zip", checksum: "1345980f035bf6243c49386ac64e2a9ae63c69058cabcba95414550fe3281d5c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
