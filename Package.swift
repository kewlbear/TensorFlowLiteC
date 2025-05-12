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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteC.xcframework.zip", checksum: "f6ee52ce949a5274929e1e90f085e7a7050fadbad06ce26ecad0b91df57975dd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteCCoreML.xcframework.zip", checksum: "351f682acf6405cf67e3846f1239a5316984f4e192de8a953be7c85f5120328c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250511/TensorFlowLiteCMetal.xcframework.zip", checksum: "ad18dd29cb97dbca06625532821cbf9fd9beb59920ff55849ac34fe058983ad4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
