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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240526/TensorFlowLiteC.xcframework.zip", checksum: "8cbc2e12ab0e6ef1f9f604e7bb0d44a8199046d7ff558422160c8fdbed9886a7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240526/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14f5c9bc470f505bfd422668552864fba9a692cc4a9e94f0d0bcade6b3811e26"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240526/TensorFlowLiteCMetal.xcframework.zip", checksum: "cb90a2fa784c2922f0427ccc7a6c1e28a9211e9086c421f43a44520ef3e69210"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
