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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteC.xcframework.zip", checksum: "1d81c7ed1a73f37703c4d33465657818ce7cf007df27759f0b364a4f0a6d7c20"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteCCoreML.xcframework.zip", checksum: "82d76e277a0f166a54c181b4a008f637fa50358712b9a4c52c47642c15aefa1e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250118/TensorFlowLiteCMetal.xcframework.zip", checksum: "ef898c0798623c7f57b343f1f29bb89cccb91437acb940c72da01c244739e1e7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
