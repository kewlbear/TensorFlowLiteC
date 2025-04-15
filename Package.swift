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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteC.xcframework.zip", checksum: "23293041cdbb2366983ed67998a0c9144cc12907db8a31ff25950ce5217998b1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteCCoreML.xcframework.zip", checksum: "95a05e56455b29e5ffa5a67dee7fba1f55bee956556ba9495543b6f25a4895ac"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250414/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7c85c047aba17c11b367e3d44626561bbaf8dcd509ab5fdc804f25e34182994"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
