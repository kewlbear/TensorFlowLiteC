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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteC.xcframework.zip", checksum: "507d9715875f1701d655239daed67f27fd0f98330c8421b905325922e0037890"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteCCoreML.xcframework.zip", checksum: "761d56b478aeaf65a0779f00e505ea15e38186ebb5676489d301161c2965eed8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250517/TensorFlowLiteCMetal.xcframework.zip", checksum: "813a35a0b9e897bfefacad40c938d605b7f2ce2f87be67e05011eef360cbc7e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
