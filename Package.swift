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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteC.xcframework.zip", checksum: "95c4e1a1444efdd53142afa821908286af534dee9ddc995aba71c5a2e030a77f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteCCoreML.xcframework.zip", checksum: "668e9fde36b57d05b11b293d66625a0971e23cab5c12dceb37ad7a9d058e5034"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250125/TensorFlowLiteCMetal.xcframework.zip", checksum: "8c204eb56ee9b92d3fe755f36daac882d552e6945a75355dae7ac7e546ab0760"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
