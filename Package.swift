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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteC.xcframework.zip", checksum: "56e7d53ff1a41df3e4133eec3dcf1e99424bbd65aba7f6cbaf94132a1adc4ac9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8035c25138df24dd00fc2ed85c1462cc62b128411d117cbdbe83d9238511865f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241129/TensorFlowLiteCMetal.xcframework.zip", checksum: "c5f4acb8b089e80383de817247164e0628dce79026797987e1280966cdfec8cb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
