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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210708/TensorFlowLiteC.xcframework.zip", checksum: "a015793f3899b1aed22eaaf6b932087a27d20f70536d80b79a34b5bdd2f53062"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210708/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c8da73cadfdc8811087436dab708f60391b82d303bcbe39a291341cfbb0df7a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210708/TensorFlowLiteCMetal.xcframework.zip", checksum: "caefeb52358d1537ef0d2c5bcce5b2aa9dc21818b2c659995a12a2209032be2a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
