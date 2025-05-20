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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteC.xcframework.zip", checksum: "1a3d5d1df685703322ca78b33b5a0d8e66bc442ee0e5d29dfae3f35113964d05"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteCCoreML.xcframework.zip", checksum: "be3dc234181612720969aac37cf69b60fae514cf53adab7815a9a22caa2ab4e0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250519/TensorFlowLiteCMetal.xcframework.zip", checksum: "ed324cbe2e492c2a739f57295c236f776b0ea7b3b211643ef6b19d2217508a1a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
