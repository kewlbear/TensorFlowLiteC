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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220909/TensorFlowLiteC.xcframework.zip", checksum: "d95eb6853ff69bbade3534d9450fe5e5352862460af13808cffacea50801e6a6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220909/TensorFlowLiteCCoreML.xcframework.zip", checksum: "51d1fa4a55396532ff747b50d1edbfa515368b1442f7773b6fac7086c289626f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220909/TensorFlowLiteCMetal.xcframework.zip", checksum: "a28c4d59d9fe875326fdad301d5e7939815a402485900d980313b8b4228916ed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
