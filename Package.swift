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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteC.xcframework.zip", checksum: "dfb3f018bb65507b392888a44274a757c86a828d150254965741dd0a7836a5a6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteCCoreML.xcframework.zip", checksum: "16321b548ae37ea86df6c0af1c398c0fee9b25c82fff0db09390c52368bf1b0d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241003/TensorFlowLiteCMetal.xcframework.zip", checksum: "54968e345193d9d411778e00042baec89711e042f6c03a1371b39466f7158e17"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
