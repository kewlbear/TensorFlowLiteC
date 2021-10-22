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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211021/TensorFlowLiteC.xcframework.zip", checksum: "789d4d9656b50437f1b962708cef94ba5d6f7df266c7bda9b0b6e1f5475ddedb"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211021/TensorFlowLiteCCoreML.xcframework.zip", checksum: "458caa379b87a57994f5b524ae9410809593ea59cdac0634a9019ee75f33ce92"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211021/TensorFlowLiteCMetal.xcframework.zip", checksum: "46df0bdc61742dc5ef2a8e94c77f763faf6752443e9530bed3bec3e3e0f98e78"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
