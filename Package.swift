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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230312/TensorFlowLiteC.xcframework.zip", checksum: "dcc0c405b9287904aa0416d090e5465f453d3f5bc9b2ebfc9c41db8a3ee31c88"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230312/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f47036c64d7b24c7d1526424dc9388a32c720c2359e98fe7bca67890ac30443e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230312/TensorFlowLiteCMetal.xcframework.zip", checksum: "9c3219c3e2b1f757b64d82d608182549bdf796d863bb2cf6c937348cdb69c9c3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
