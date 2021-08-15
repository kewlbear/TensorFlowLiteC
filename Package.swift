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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210814/TensorFlowLiteC.xcframework.zip", checksum: "8228aa6ffb778d48e9c94dc710ef05395781c035ea9edf144c3bcb34d56609e6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210814/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4b1b0fb1e7381953b63bfdb67d5bc64fc420bf28f56b9b0cee30288629bda644"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210814/TensorFlowLiteCMetal.xcframework.zip", checksum: "076b642d5af99ec22f00ee99c4f3b7692df9e7622a0f433ec596b9606f4d07c2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
