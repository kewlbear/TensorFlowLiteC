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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240309/TensorFlowLiteC.xcframework.zip", checksum: "6e9dd9093cbb2a6192941caff611d77626cc01df0c649031802b8f96c93721ff"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240309/TensorFlowLiteCCoreML.xcframework.zip", checksum: "312df0cb189b55a5f9c1e7052a604cc77376c525f620d54ed9a302f756bafddb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240309/TensorFlowLiteCMetal.xcframework.zip", checksum: "9e639a5b931302a93fe6b9257b1f7d71664066c4e488b4de2d25ffb99ef30aa1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
