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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230317/TensorFlowLiteC.xcframework.zip", checksum: "19e853a9bf5773238f890923df011561100bd2f0633eed0e373b9c61d6a22b98"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230317/TensorFlowLiteCCoreML.xcframework.zip", checksum: "814f84b00add14d6f5cb62dcfd60f84332e6e109001a2426ae74ee3a03d67bee"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230317/TensorFlowLiteCMetal.xcframework.zip", checksum: "0774260fbd12b1353cd12c4cacb69b5ecd472b294c98c8d5f7c1a3810e3edb4f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
