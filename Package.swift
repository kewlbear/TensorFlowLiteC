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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240212/TensorFlowLiteC.xcframework.zip", checksum: "2d0d37687fa28787f23e08ed9233152b16a13a284ad47c7578680a5085acdb85"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240212/TensorFlowLiteCCoreML.xcframework.zip", checksum: "651a5b6c61abc299233c900460bc18dc3358564b497cb9cd1a9bb5b3327a5d69"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240212/TensorFlowLiteCMetal.xcframework.zip", checksum: "93bd972fa100ed4be11c27c82eb9393b5d9aba7424ebadf3356f64d7313c8858"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
