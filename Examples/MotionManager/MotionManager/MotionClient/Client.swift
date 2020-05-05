import Combine
import ComposableArchitecture
import CoreMotion

struct MotionClient {
  enum Action: Equatable {
    case motionUpdate(DeviceMotion)
  }

  enum Error: Swift.Error, Equatable {
    case motionUpdateFailed(String)
    case notAvailable
  }

  var deviceMotionUpdates: () -> Effect<MotionClient.Action, MotionClient.Error>
}
