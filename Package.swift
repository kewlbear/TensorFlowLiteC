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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230523/TensorFlowLiteC.xcframework.zip", checksum: "e1cdfb3d9c67204df8d576656928bc1e2ef7269cbddef8f7faadbdf1698d156a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230523/TensorFlowLiteCCoreML.xcframework.zip", checksum: "755d4f353a021b7d4f0a9ba6b4f19d093c0850c7e5d0ce493ac2924276bcb09b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230523/TensorFlowLiteCMetal.xcframework.zip", checksum: "f7c74e8f07bb99c83fb5decbf04f8cee8050efd5a90ae53be24e370b1f2a1849"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
