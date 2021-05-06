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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210505/TensorFlowLiteC.xcframework.zip", checksum: "87fcda04ad65c623c7b479f976c36d6afff0a52e2c77d6bdea32af8e7e2b8262"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210505/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9d755528d3fa85305780bafff9e4640cf724b7f78c4168d0d1be021ffaa6577a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210505/TensorFlowLiteCMetal.xcframework.zip", checksum: "0a0675bae7cff3f11a14f4f8fef94a3114ccd119bd2716cc3a62029b7ad630de"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
