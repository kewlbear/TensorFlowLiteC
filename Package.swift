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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240321/TensorFlowLiteC.xcframework.zip", checksum: "f2937e8f187c0c9c89bd58b815c008c77294ca05c734b9f860ba8ab373efa336"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240321/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9fce0918899954f495c0117ff421583f5827a3bcba78142f0df7eda32680511f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240321/TensorFlowLiteCMetal.xcframework.zip", checksum: "24e4e6ca50eaa39235d4cf3d61a9657dbf253d8ba6a86af495b69c66912e1de0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
