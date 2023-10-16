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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231015/TensorFlowLiteC.xcframework.zip", checksum: "0a064310a350a0095c9540c4b536c534f996d0658d6a76f525f725a33d27928c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231015/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cabdf6f5bf78a6bfffdd4d32a5697419c94bbe2cbe09d5040677acd51876a445"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231015/TensorFlowLiteCMetal.xcframework.zip", checksum: "1a53d7d4bfc73dced0fd9fc582aa68d362845a8b6692deec67177cba8cec84b6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
