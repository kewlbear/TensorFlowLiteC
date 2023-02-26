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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230225/TensorFlowLiteC.xcframework.zip", checksum: "84ef53a18fb5c3c3f175726bf152eaa18900162222c09d2157553bc660eb33a4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "88e4d5c5dbe37d9a96e285fe6f86dc4d9c83571535afb65da25ef128db24930d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230225/TensorFlowLiteCMetal.xcframework.zip", checksum: "3ff21796ba7d2d5baf91e27bfedabfc430cbc6ebe307f5cbc2813fe1ba2ed5ae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
