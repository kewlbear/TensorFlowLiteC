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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230428/TensorFlowLiteC.xcframework.zip", checksum: "d7f1031fcd76cbfe051d47fa664b1a4b9ba7502f12528cb5942fe0ae97a7e272"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230428/TensorFlowLiteCCoreML.xcframework.zip", checksum: "64a60f59ec42e628f505941a9cfc1186b13a5a032ee8ae667a441380eb211102"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230428/TensorFlowLiteCMetal.xcframework.zip", checksum: "634c7478fa0921af7cc8d3e5d4fdf4e8d5b95427e93d174fe2dea4b7d069d092"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
