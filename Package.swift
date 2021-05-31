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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210530/TensorFlowLiteC.xcframework.zip", checksum: "6e19bcfad1f2502a296bfaa06efb578f3c6095792f1e3c445ec5fa69fd2e1e02"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210530/TensorFlowLiteCCoreML.xcframework.zip", checksum: "64dee8737410f0b2df7c611963cb55c07edddfdb8dc7d8bbca2a166bc47bee42"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210530/TensorFlowLiteCMetal.xcframework.zip", checksum: "6a408b381fa99baae2cff4ca0d39e2013bc139ec932109a5b83a1f120032ddc3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
