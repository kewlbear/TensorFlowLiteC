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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240118/TensorFlowLiteC.xcframework.zip", checksum: "dc48beff320f71983252165168adba7aa0dbdb7018380a75f11e57d897648dc2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240118/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d3aa4355d9e72343c6427420dd7a4882b72fc9933225725c5f2d37ecf37397fa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240118/TensorFlowLiteCMetal.xcframework.zip", checksum: "2057ac17a08e0a42ab709679edeeefacaf9359cf0565fac26f7a7326db96f386"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
