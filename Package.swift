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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteC.xcframework.zip", checksum: "0ec698fcedb70a611a8314175353ec0a248e399c884285abee8d2d0bc2c8fbf6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e9257abb8b310a94e3b8a7a5479402eba26545405843243e6a59b6c61dd26b99"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241231/TensorFlowLiteCMetal.xcframework.zip", checksum: "78ec6b58b397e41ff98ee16a34cd8c0e062bdac0273c8b0df03b1aeb35b2f24e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
