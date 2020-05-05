import ComposableArchitecture

#if DEBUG
  extension MotionClient {
    static func mock(
      deviceMotionUpdates: @escaping () -> Effect<MotionClient.Action, MotionClient.Error> = {
          fatalError("Unimplemented")
        }
      ) -> Self {
      Self(
        deviceMotionUpdates: deviceMotionUpdates
      )
    }
  }
#endif
