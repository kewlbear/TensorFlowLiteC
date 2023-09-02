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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230901/TensorFlowLiteC.xcframework.zip", checksum: "3c6876be00a2848b234e71b5741a04576d4a568aee02a1478029670823813efd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230901/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6fce062375251c3b8aa92713c6197ec1255cb3684c1ea1726af39f9e4a1ffce7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230901/TensorFlowLiteCMetal.xcframework.zip", checksum: "a384bdc4984350ecb9c39456e562ae71228cdd7c36bbe258b08e2ab09d0f9c67"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
