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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteC.xcframework.zip", checksum: "4198b844505d6fa75c60ffda3ff61222cebf360508b92243861458b4e966e240"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf7038b428e461a69ecc959d47d51745d97ba7daeddc2e8d3c9e7ee9f05b1a43"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241112/TensorFlowLiteCMetal.xcframework.zip", checksum: "f6b17193b991f81e8f8db865322b11821ac937a8119956b0023bd3740a8df41e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
