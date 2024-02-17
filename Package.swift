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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240216/TensorFlowLiteC.xcframework.zip", checksum: "3fb9d279fd4757d28c83dda15c870af21cb3ebf536bc0422448f592f8102d511"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240216/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e1f49ba49aa3debc03f3a14acf88464ae1e8fccdaf5c32bb3175b2b310e4416e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240216/TensorFlowLiteCMetal.xcframework.zip", checksum: "84292a62d92d8f40833e55c18bc55f5eab4f9abe58c65adc560afd242d656c7f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
