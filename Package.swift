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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210608/TensorFlowLiteC.xcframework.zip", checksum: "a76a497d93a90e96586d85e31104988a868633def68df75b6b086f430117322e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210608/TensorFlowLiteCCoreML.xcframework.zip", checksum: "47cd1d24036ab57b0e9a7fe8a5e241c7cbfe18bd8d8f3beff74dfcbdb2f02e85"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210608/TensorFlowLiteCMetal.xcframework.zip", checksum: "146effd736b6018cc66b1efe43f2347b1016dd28a56956c06ffa4a37e556c0e9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
