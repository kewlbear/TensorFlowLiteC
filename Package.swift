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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240904/TensorFlowLiteC.xcframework.zip", checksum: "12d9a971bfb5ebfd12f31092351a144d63ef399d119da424f236f5735190ae37"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240904/TensorFlowLiteCCoreML.xcframework.zip", checksum: "717a4a38b95bca16e7b55fc9dc1feed44e9dfbda969e99b1abd12e6249f77a7d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240904/TensorFlowLiteCMetal.xcframework.zip", checksum: "236a045028836c2abe3d607e7481791c709297cb0c42795d0538e2345b912e4a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
