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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteC.xcframework.zip", checksum: "5b7f075c7cfd68766684979ba92ef517faa9522b9b959e0154589acb00ef83de"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "814bbe6f6153e3df8e6cf837792fa08c789e15ff3f45bd6c8ccf879763cc074c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241123/TensorFlowLiteCMetal.xcframework.zip", checksum: "92e1356211531cfd9e72f0f29ff5f3add9e6eb40c4ec87426357ec05abd209f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
