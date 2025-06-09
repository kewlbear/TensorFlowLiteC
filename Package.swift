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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteC.xcframework.zip", checksum: "0e489da6c4fd581800b01db5827fbe59eb9fe5eb42a326e1c02840f291a8b1a9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14f95bd6d36e732d410c180b5f2f7e6b13e760f6f67f62e450626936f1af1dd1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250608/TensorFlowLiteCMetal.xcframework.zip", checksum: "0b9964223bd11dc6a042379270428ed72af59436fc7554f345401637596b2891"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
