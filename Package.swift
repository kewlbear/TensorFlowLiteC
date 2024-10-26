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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteC.xcframework.zip", checksum: "3f1451beb7e968165023eadf7e8ca7fe52ec4e60db8fadf14b3bcf51c0edc3b9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteCCoreML.xcframework.zip", checksum: "37473e5faa689d2cc3e9efa20202c542695e72292fbfe176f45405c813bf1df6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241025/TensorFlowLiteCMetal.xcframework.zip", checksum: "df10104ae8b2cd69dfec5ff6d5c748a2c12537277a5765a31007420177beb1ba"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
