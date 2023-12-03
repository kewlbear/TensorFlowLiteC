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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231202/TensorFlowLiteC.xcframework.zip", checksum: "ce0788cb2073bb3dfb5301ba4f7faf5e3e6a4d81b721817b3d9b7e52ed0fc9a5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231202/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eab48550982966ad471e6da15ff69ddc9aa9ae22dd2b75f09f7f2586579318d5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231202/TensorFlowLiteCMetal.xcframework.zip", checksum: "b0473b792b926e7a0a262428bd5d58162b84ae3c14ff88fc20300bd3e5eff6b2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
