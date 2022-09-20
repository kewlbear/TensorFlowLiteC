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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220919/TensorFlowLiteC.xcframework.zip", checksum: "5cd7ee9a58cb79f0b7bc8ea11610843d4b44ca17e0212796b7d0f8ac5e543b88"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220919/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8b9fe077212b1a47ecaa1b1e11a4a6b9dc90d69c4f81df087d03b16c54aa76e0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220919/TensorFlowLiteCMetal.xcframework.zip", checksum: "8d7dea99bc259d495ab2fd57effc5f6f54cc2e8cd22077ae81bbcdf5e91fce80"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
