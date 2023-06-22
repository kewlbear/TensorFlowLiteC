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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230621/TensorFlowLiteC.xcframework.zip", checksum: "ed311f0ebf2ea3aa87b52f47f3f011c98ef379acf04e3eb8eaf83307f51410a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230621/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e88d97659d6d67e6b3fadc76a1d30f8053ed9b9f2e00079f558707d5fa5ab0e3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230621/TensorFlowLiteCMetal.xcframework.zip", checksum: "c57669bcd9c1efe4b8c7120bce92f5b9d1285ceb80709d038b73a3a30f2cd122"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
