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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240413/TensorFlowLiteC.xcframework.zip", checksum: "460d01f357282faee9aead2a880cc2d14438b22a2042e5dd5194a890cbd009a0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240413/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fb74cc7dc199af3839421c5158ec39e65a337add91348461ddbfcd32701ae4e3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240413/TensorFlowLiteCMetal.xcframework.zip", checksum: "5f20b31d164cb193ff56d8bbef5b9d53710d11474a4b51c4fdd998ec531546c1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
