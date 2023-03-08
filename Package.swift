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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230307/TensorFlowLiteC.xcframework.zip", checksum: "df4cfbc9127490bff227201e5b069a0f1d7de3ec6ce5640719ecb555ba9913c2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230307/TensorFlowLiteCCoreML.xcframework.zip", checksum: "36fefd75bb16c2f4e15aa3890eedaaf4dc633f13ac4a6569cd7966e284904ded"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230307/TensorFlowLiteCMetal.xcframework.zip", checksum: "18a32e8c0dc9d2b4ba46f2f1c1034290a84f49a244aa8a939e2489c461f25017"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
