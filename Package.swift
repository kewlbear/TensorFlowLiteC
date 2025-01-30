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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteC.xcframework.zip", checksum: "fb81853e543ff022d8b8daf1ad8a8e19f972f2a86525c1cf591260a340880c68"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4e84b4e281eed506a47d541e591e712a60be73370e8ecbca8da76e421b60b488"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250129/TensorFlowLiteCMetal.xcframework.zip", checksum: "e0b136b1ec6df6033b2c525fd6b754df935bba6659ea5bef2f3901a156896be5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
