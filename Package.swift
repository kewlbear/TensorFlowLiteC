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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteC.xcframework.zip", checksum: "b8121bd20e27574902acf3cd7dcc6770b47fae62dd4035d7587b8ca86c90dff0"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteCCoreML.xcframework.zip", checksum: "73e93b0e96015eb917ca04440cf95c688e26f69286244ac358658f389f80cad5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241001/TensorFlowLiteCMetal.xcframework.zip", checksum: "27e8828d95ffc4975aba24ea41f546949523558cb942f0f235ba9c6f5fce0a2a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
