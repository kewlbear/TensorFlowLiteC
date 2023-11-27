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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231126/TensorFlowLiteC.xcframework.zip", checksum: "53cee872156a487a5e1f8111b0b8239998208ec87b4f693e594b199fb0ff5058"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d1d959a8a44f02e707be9fa28d9d45ef4f091f1782c0afd0ede469e50cce4d4a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231126/TensorFlowLiteCMetal.xcframework.zip", checksum: "fafb6dc630e19188d5b37c646f6db34285019bd5e49bf01925b417691edda56a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
