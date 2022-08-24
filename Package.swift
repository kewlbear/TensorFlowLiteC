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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220823/TensorFlowLiteC.xcframework.zip", checksum: "299f49bc1d11bbe7a9fce95031631efcf13d3fc030ed58933f425ff09a513c22"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220823/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0934aa346b290cae82e7c3ff99ac251fc1a3104d4a40e1e9a23ee9446a3c5af1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220823/TensorFlowLiteCMetal.xcframework.zip", checksum: "ddbc9a2b50855359df5db2a3edb5732462642e8c3868e08564666468d2fa99e2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
