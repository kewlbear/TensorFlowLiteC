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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240505/TensorFlowLiteC.xcframework.zip", checksum: "618a05ed55d89036cff0f73fe640c1b2384529b161143c3036ac7d5605990dd8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240505/TensorFlowLiteCCoreML.xcframework.zip", checksum: "74c5bce0ed010d315a28f0401e713663b5563ce4f725d4e9f4e3c643cb0162c6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240505/TensorFlowLiteCMetal.xcframework.zip", checksum: "f7be0653441853cd71976ed76eceb65aac81371b62c9b1b3f60cc33c781dcb92"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
