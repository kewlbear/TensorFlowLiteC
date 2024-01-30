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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240129/TensorFlowLiteC.xcframework.zip", checksum: "d637d933e450f3d10209278f30c8bd0626295782e5fb584403bf9055448fcd56"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "546c7a0c119e37695de9f55001d8a5f6c262de9e22a93d7e3c1bb303726d5f5b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240129/TensorFlowLiteCMetal.xcframework.zip", checksum: "8623248fe20cfa16cc2afb60e815a18a2571a0997c4431abc58a5e9510d2f3b1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
