import ComposableArchitecture
import Foundation

struct AudioPlayerClient {
  var play: (AnyHashable, URL) -> Effect<Action, Failure>
  var stop: (AnyHashable) -> Effect<Never, Never>

  enum Action: Equatable {
    case didFinishPlaying(successfully: Bool)
  }

  enum Failure: Error, Equatable {
    case couldntCreateAudioPlayer
    case decodeErrorDidOccur
  }
}
