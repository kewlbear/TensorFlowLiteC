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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230712/TensorFlowLiteC.xcframework.zip", checksum: "bad97f08f9558a8573bc87be79ea14929c8f0f5bb8a374a11b0d5de86866c3f1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230712/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5b5bd070b0b7cb941371946258126ae1394cdf939006b50a8ddd30ee9e24ada6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230712/TensorFlowLiteCMetal.xcframework.zip", checksum: "85ee05ff46e70e96c155a3d9a920c62f25df94f4976b2eef7863622c360dcdd6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
