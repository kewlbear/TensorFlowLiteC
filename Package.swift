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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211006/TensorFlowLiteC.xcframework.zip", checksum: "514648e22a920782b33000e6d65dd38bc892e6762063a26beea619f5d9b9e5f0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211006/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c1627668cc1f4c42af13e8f543d5a37c06c1f44c9100b8fdfba6b4db11586bc5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211006/TensorFlowLiteCMetal.xcframework.zip", checksum: "16858bc92ac2ec7567c7c85d50919874d5b1a6ee05c53e12d3440d54268681dc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
