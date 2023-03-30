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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230329/TensorFlowLiteC.xcframework.zip", checksum: "575af07e94d1431b2f57389dc6bbcd23d177bca604f45553832293d828502e8c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230329/TensorFlowLiteCCoreML.xcframework.zip", checksum: "69b3547719edaeef2a85bb0f472dc92d1f477cf71e7879503a71424a86664c96"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230329/TensorFlowLiteCMetal.xcframework.zip", checksum: "95f46411c505f68e64007c1beace70f70c45f32c101fc48ef137ec0dc3c25ed9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
