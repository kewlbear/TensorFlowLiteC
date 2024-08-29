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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240828/TensorFlowLiteC.xcframework.zip", checksum: "caf84f1c85b102f647745ac13aa0ebddc0f4a2b0a7fc4af81b59157abe1e8180"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240828/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1af0621ff899563b203e239496479baf33c535881b47419a68fbacd128344575"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240828/TensorFlowLiteCMetal.xcframework.zip", checksum: "4df4d08f2d9f8c70bed131350ee5ce7ae5263f78548ed5de8bdff25a6a012c7c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
