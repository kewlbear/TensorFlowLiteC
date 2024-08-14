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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240813/TensorFlowLiteC.xcframework.zip", checksum: "0de6213584735f36b344712ba89f1f1648aa7bf0f20b965bfd024c16dd12395f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240813/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9cefbe090623c47383fd81a7b9eb2f90b22594062a93d44b064c01662668e854"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240813/TensorFlowLiteCMetal.xcframework.zip", checksum: "06c6712b9533ac0c9a7bc19022f84c5c4efa7f16f12678cef1dccb97fe38c018"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
