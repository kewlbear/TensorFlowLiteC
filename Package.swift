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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteC.xcframework.zip", checksum: "1b56e5abf615ef046c7c00dee7a51eaa5a7bf16f06a6c61980366916465b0f80"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8d543e8f532d12abe686dc0928601edd6bb577a32ec8a561c671c5d2b474e34f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250421/TensorFlowLiteCMetal.xcframework.zip", checksum: "a0d1e05dd23716d6d572feadac0f6fd527958f831b17c37fe81354814a8ff5dd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
