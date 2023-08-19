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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230818/TensorFlowLiteC.xcframework.zip", checksum: "b3b88c26dbf856a3f5718e086793f58f7c3b5053f3dae33b423bb3827767f55c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230818/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5a1089a469165b55243a3e20ecb9e295404d975e011a116dd9034cc04f0f34a5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230818/TensorFlowLiteCMetal.xcframework.zip", checksum: "c1fe513d229f34e27bec05ca1ca4cdbe042b89e99773a424ddebd1a90ddb604c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
