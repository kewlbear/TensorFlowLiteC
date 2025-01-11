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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteC.xcframework.zip", checksum: "2ab145e9e898047520a974930c28e138d16f9a6d6bd89950f8cb4943769467df"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4a8a9cf2fb0c95c3bb3df9999ccbdd661d4cb65460dcbeec060b972f774a961e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250110/TensorFlowLiteCMetal.xcframework.zip", checksum: "7df7b4720acd5bb8be4d0c476fc8293bbfcbbe06262ab3ac4775ea99f0516ad9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
