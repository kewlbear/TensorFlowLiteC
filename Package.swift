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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230822/TensorFlowLiteC.xcframework.zip", checksum: "f94d9d69ee4212c0d5c72fded3cc16e562bc2a359f140f4f57c20ebe69e78efe"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230822/TensorFlowLiteCCoreML.xcframework.zip", checksum: "497f8414d1129e2bd21061b58467dbcd6bff1aa7b933ce43b889e31eca665f46"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230822/TensorFlowLiteCMetal.xcframework.zip", checksum: "8ed49e1685a962e0a84602cc787be316baeb2f1fd3e91fd05dd0021fc0aa31d3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
