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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteC.xcframework.zip", checksum: "242eb0cfc0bdf411c1e1a378c6a16b71a87923d6407c22780dd91f5e3379ceb5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9c3104960a04a29d8934fa36331e89c7e8b8d55684f93337800549e02b705259"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250619/TensorFlowLiteCMetal.xcframework.zip", checksum: "3015e93a62822b83f280fa9333044f4ae93707a08106270ed1b1cfefd28a937d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
