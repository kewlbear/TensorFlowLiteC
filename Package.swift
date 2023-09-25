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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230924/TensorFlowLiteC.xcframework.zip", checksum: "0e7e203d1f64fb771725b81a714c44b41f982dcc287d5a91d647c10a5ada25d1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230924/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a66d934f26fb09a3f30bdf01dc55fbb1bf32e40ca489ee0736df578f20aa29d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230924/TensorFlowLiteCMetal.xcframework.zip", checksum: "485f487140a9b9534d930dc3530618201e89243c5164034e74b9d2f027711923"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
