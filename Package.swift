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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteC.xcframework.zip", checksum: "d00075c3915fd412f158e12cc91256370080380ff78a163baf86cf02adeb7e68"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e0fdc10f3e8042d60ecf2a16129e146097bcaf93ead0eec54d9ba20975fc1476"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250102/TensorFlowLiteCMetal.xcframework.zip", checksum: "9cb2259e26cb3cd8159a263cc5d50a27cf696afd52afdd58c62dc519af0f08f8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
