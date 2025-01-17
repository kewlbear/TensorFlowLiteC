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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteC.xcframework.zip", checksum: "f073c3d0bfbc17fb43c4690a8260c49bcc8a0542ea85e8d4b5490b9f7da2e7dc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "266b6e8406c46077812c8067fbcad479009af0726818c344af4402e7ad518de5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250116/TensorFlowLiteCMetal.xcframework.zip", checksum: "4e9a06dc4b6c9c664bd0938915c75613771c9bb4e7598826277f37247a13be8e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
