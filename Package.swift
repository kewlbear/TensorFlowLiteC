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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210912/TensorFlowLiteC.xcframework.zip", checksum: "6aa1e98b8a9d355ad4e843d89d018e5669a90cf1dd8dae67658df9c17fac9283"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210912/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7a1371f5d9d914d92d299f69dc12a3df1ea25fec61e286fff47b86c67b2094bd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210912/TensorFlowLiteCMetal.xcframework.zip", checksum: "0c0cf3c396a159907e8bbfce14174d16484c82d7f6823db020bfd542f4ee06cc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
