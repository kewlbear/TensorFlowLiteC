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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240429/TensorFlowLiteC.xcframework.zip", checksum: "683ebb22ad114c49d594e48909203e72e865b03e962112c5a2b44f54bd6f0f77"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240429/TensorFlowLiteCCoreML.xcframework.zip", checksum: "40d34ead7228c2adcdba58addd62c2d2da86c689b228f5f698026763e9456139"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240429/TensorFlowLiteCMetal.xcframework.zip", checksum: "d9a09840364fbfe6d71648f05b91ba8974a71b280179157dcecbaf8af0eb2702"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
