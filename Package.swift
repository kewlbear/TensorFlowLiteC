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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231204/TensorFlowLiteC.xcframework.zip", checksum: "81b33c8dfef928213729daa398073331eaa25892ae8460e56a0051000d69e3be"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231204/TensorFlowLiteCCoreML.xcframework.zip", checksum: "14db663d408d7b33e5f0fa34797160243436dd4bad5b67d8facebb3cff3a92d8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231204/TensorFlowLiteCMetal.xcframework.zip", checksum: "fa68f1c8a67326287a619c7dd2f85d7418818e3d7262e58817763ea8e1ca084f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
