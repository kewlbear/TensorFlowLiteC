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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteC.xcframework.zip", checksum: "bb7cc50409f5ce94f6ee84a4da5587a5242f82d63b696f6ced6b98af2ad5d9df"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e2fcf7bd6c680eb7c61bd85d01dc72897b3cf3d9ecc3fa9cbefaf454717529dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250612/TensorFlowLiteCMetal.xcframework.zip", checksum: "80d5b66fb73e8004c31606b4965766201ec6d938642148c18d9bad3c9a70149c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
