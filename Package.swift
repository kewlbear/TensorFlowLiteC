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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230904/TensorFlowLiteC.xcframework.zip", checksum: "6077afee8dd9add137eec158fccd02960c40f4120c14420622181e80938182f2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230904/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a68d3c7285fd90e8fee5264612120b0617b78a1c093c604892f41c1453c00328"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230904/TensorFlowLiteCMetal.xcframework.zip", checksum: "6e829cd28009424a957d8f16b320739f061e6ac04cd1ebee473ffaaf1bdc061c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
