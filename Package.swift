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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210607/TensorFlowLiteC.xcframework.zip", checksum: "bddef576c81a6fb9771ebcdc28d36f952fece12c004453c1bc0444bfea2c3111"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210607/TensorFlowLiteCCoreML.xcframework.zip", checksum: "54d2ea8f3a2c1261eb4009c9f1703e7cae06046c89c658cbe4d64d1ee073133a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210607/TensorFlowLiteCMetal.xcframework.zip", checksum: "48c1890e837be96bbdb8c3e00440e67a01e1fd04ca09e2eadfe10fcca72edd49"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
