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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211025/TensorFlowLiteC.xcframework.zip", checksum: "475274a8eacb5c06229c91d6c0c38d7f954af4361e0712811052e2f24241a8e5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211025/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f1e907eceb98aa7b011b714156092e5994d27700cdcbe40c8687c958c1d2ac80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211025/TensorFlowLiteCMetal.xcframework.zip", checksum: "6299a3161298b8605b3441e0a1f264713688623b7ada7aa5ae16d1ae6ff954d6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
