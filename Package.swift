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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteC.xcframework.zip", checksum: "41af6b59dbffd91527f24d0a3d44c67d5bc052b3d358c60a7ae151ffe64623a5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d99fcc518cb38e99d7491bae41002a7c2e89925ae839615cdf8fc8bfbf0f7e13"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250512/TensorFlowLiteCMetal.xcframework.zip", checksum: "ea6f2b7110538b6507e7e668a002e3ddc02dc8203e5ee3b8ca0ae0c3aba5f5f8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
