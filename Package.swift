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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221025/TensorFlowLiteC.xcframework.zip", checksum: "b32245a88c2004a74892339684375bdcc0765c712326e0ecbcbcd9e858a7a54a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221025/TensorFlowLiteCCoreML.xcframework.zip", checksum: "70d9d111159f66963ae203fe5dd5f4a5035ac8c72c5ad07e423b514458033d58"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221025/TensorFlowLiteCMetal.xcframework.zip", checksum: "6c74d474e31fccf9b8cf302821bf1700f08ed4dc5ac2651cfbc226d64b119daa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
