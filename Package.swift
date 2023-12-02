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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231201/TensorFlowLiteC.xcframework.zip", checksum: "5093564e8b8c34a7801bd549ebff22e654b11d84851b4220ff0c3c35d39c56a5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231201/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ce442547c353ebfa3aac941b8ae3dc7f84e50c283f406ca90443b5db3dd2f651"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231201/TensorFlowLiteCMetal.xcframework.zip", checksum: "243997a2b81fe561fd412b60e477c056bfa741dc5ec2ad3d534c02cb0e54958e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
