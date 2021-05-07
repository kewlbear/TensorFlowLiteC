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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210506/TensorFlowLiteC.xcframework.zip", checksum: "548a5f4265d2aa1385eaea9e6bb9a2146a8ec922da3e9938f8d847374d330c66"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210506/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c62b415e244566f616800c591fa3dcbb583e9c9f2692ab734c37a7dec50defeb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210506/TensorFlowLiteCMetal.xcframework.zip", checksum: "9928863f92bf041f32855a583e01861107ead67f14f981ddffe9d021d2487ae3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
