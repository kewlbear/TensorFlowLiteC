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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210624/TensorFlowLiteC.xcframework.zip", checksum: "fe97eeb62969d885a64717e6c289e066ed6f5864b0a34f4cd10bea54e9d30bb6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210624/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a2908975c198c68d17b11a0deb988954804732b47a539dbe0389b138f7621448"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210624/TensorFlowLiteCMetal.xcframework.zip", checksum: "088219a31a95304c4c2a81333b35fac9cbd20ff69c837c2f0daae8126ab215e5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
