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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230806/TensorFlowLiteC.xcframework.zip", checksum: "5fee3676d9c6b1e5029573329b6638d046b7632741860b3079b55c71e0b5c700"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230806/TensorFlowLiteCCoreML.xcframework.zip", checksum: "48ba1bd8aa4ea73a197e82d9a9927722f628bcfd08e2e1657f626af171e528ba"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230806/TensorFlowLiteCMetal.xcframework.zip", checksum: "74646ac829c200bd7e8ec3a8821ba17bd092254b9f9ff9d2962d20c6df8becf5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
