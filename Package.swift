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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240618/TensorFlowLiteC.xcframework.zip", checksum: "23b33fbf9419d12fd2b2500611d431a568e300ffe0bb5f383a985eb5c81eff52"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240618/TensorFlowLiteCCoreML.xcframework.zip", checksum: "22708164819ea098374540924c2af717cf3ba1617754a20eb1f7c08fc800946f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240618/TensorFlowLiteCMetal.xcframework.zip", checksum: "d04efdc7a50795cdd1529da646b5ad244dab40c6e9b0b5fef424925339338c2e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
