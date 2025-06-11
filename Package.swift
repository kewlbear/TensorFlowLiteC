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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteC.xcframework.zip", checksum: "d754e1d5fc3030599ef0a3e512e51e770d9c0af75692ed714b7628898b34beb6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a1da2d2329da34bec875d473d9d38739936f515ec4e873af8ca21a4a174b7ee6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250610/TensorFlowLiteCMetal.xcframework.zip", checksum: "6910c548add6875a5921d2348c80df897482e615d0edc66aec0b3546c2d30a84"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
