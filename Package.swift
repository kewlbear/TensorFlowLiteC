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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221003/TensorFlowLiteC.xcframework.zip", checksum: "a35c576da2cff807aa7d7da6cdb996e2debe1f8de7dd2993c124a7a49b418c5a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221003/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f1ecf4c01b7970f01b940b2dc918ea3f6341843c8b1dd0dd1d864d923976f7e8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221003/TensorFlowLiteCMetal.xcframework.zip", checksum: "df9b222ab9a09262584e9f8cbd765e80ec1f98ddde7a8c74d79507ed9a33dcf7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
