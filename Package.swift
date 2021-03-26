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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210325/TensorFlowLiteC.xcframework.zip", checksum: "50ca88ca35715636a826700d3946be8d96d6924c3cf26d343da50673fc391ddc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210325/TensorFlowLiteCCoreML.xcframework.zip", checksum: "50084f1b9f40073606dcf0bc314e353d7e894530ffeab36e7ac0c5b2bc8e706c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210325/TensorFlowLiteCMetal.xcframework.zip", checksum: "2cb3c9122795cd00ec3750dc4c6fa72481fa241a89aae473e9c07e07eade6930"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
