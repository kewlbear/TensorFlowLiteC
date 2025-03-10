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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteC.xcframework.zip", checksum: "e7b0973a2e36d39e484a0fd23b0299e3562088e6d4a357b49353cc73f66152ee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1ce7fae52f5ee9db072fbfb70cba4aa7251f2e159a1b4e93f03a088900b0b169"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250309/TensorFlowLiteCMetal.xcframework.zip", checksum: "8bf1d9c850c78a577d47930e7dc4aaacb83cc06ee573fdc881fd20178d47909d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
