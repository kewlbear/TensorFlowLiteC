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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210329/TensorFlowLiteC.xcframework.zip", checksum: "2b4003e369b11c1fc101edb3480cf739f1289477ba1ded260dc0cd3a555a9d9f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210329/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d167a12c0a1983468c77135bb349e79d5311fb2371189b5cc818563a9c0d9442"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210329/TensorFlowLiteCMetal.xcframework.zip", checksum: "1881f8f29cd7417182e430b093d6315814914b61543b0cd3806ce40c5eaa8e6e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
