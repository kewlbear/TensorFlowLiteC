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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230423/TensorFlowLiteC.xcframework.zip", checksum: "12cc65dd5e547647c4e38dfd8a5f3424785447002301af18c486462fa6b36efd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230423/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5fa2107bb573924d06784a610a87d196c8a89d828c74418507bcdbc8584680c0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230423/TensorFlowLiteCMetal.xcframework.zip", checksum: "8d8f2d28bfe55f6221361759f48583daa4c055bd8c05e2a064b397139e9fa830"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
