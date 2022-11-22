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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221121/TensorFlowLiteC.xcframework.zip", checksum: "a72f402fc82b2919864fcefddafcf8f9cc25e477306565c3059338be1a9bae87"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221121/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2c3bf6374e2c7725e4ef1965b3fece17e29ec5dae2fe44fee7bca684d782157f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221121/TensorFlowLiteCMetal.xcframework.zip", checksum: "66e70b62be72947fc970ba3f29b3fa078d69b6cc8117a64ff8a096c261685226"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
