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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231027/TensorFlowLiteC.xcframework.zip", checksum: "2d7ee85c447f0144225e899756ed1ab483c1e9a1de3b4db96978c05848811e2f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231027/TensorFlowLiteCCoreML.xcframework.zip", checksum: "94f9ce2da3899aacb5bc32a0843cc46b459ab0c7ba2593147942a6dfdcf135f0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231027/TensorFlowLiteCMetal.xcframework.zip", checksum: "cbf42d6e551ebde3a8958c3fe4b8cf3c88c29971713ce8f2421c99acef5eb133"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
