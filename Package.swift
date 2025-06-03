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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteC.xcframework.zip", checksum: "a398fc703d8715e3e2c2655767bdfc38ba5501e009d0a56a0e1e1291a8f18df9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteCCoreML.xcframework.zip", checksum: "743822d3b78f575793268ea7227030bd7916e7326c174e37d9ed9d608cfb46fd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250602/TensorFlowLiteCMetal.xcframework.zip", checksum: "9efd4d3b075a2e5b5eab76971d48ad4c346c05e26268fb8d7945923d14f3dae0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
