import AVFoundation

/// Audio player that uses AVFoundation to play looping background music and
/// short sound effects. For when using SKActions just isn't good enough.
public class SKTAudio {
    public var backgroundMusicPlayer: AVAudioPlayer?
    public var soundEffectPlayer: AVAudioPlayer?

    /// Returns the shared SKTAudio instance
    public class func sharedInstance() -> SKTAudio {
        return SKTAudioInstance
    }

    /// Plays background music from the specified file
    /// - Parameter filename: The name of the audio file to play
    public func playBackgroundMusic(_ filename: String) {
        let url = Bundle.main.url(forResource: filename, withExtension: nil)
        if url == nil {
            print("Could not find file: \(filename)")
            return
        }

        var error: NSError?
        do {
            backgroundMusicPlayer = try AVAudioPlayer(contentsOf: url!)
        } catch let error1 as NSError {
            error = error1
            backgroundMusicPlayer = nil
        }
        if let player = backgroundMusicPlayer {
            player.numberOfLoops = -1
            player.prepareToPlay()
            player.play()
        } else {
            print("Could not create audio player: \(error!)")
        }
    }

    /// Pauses the currently playing background music
    public func pauseBackgroundMusic() {
        if let player = backgroundMusicPlayer {
            if player.isPlaying {
                player.pause()
            }
        }
    }

    /// Resumes playing the background music if it was paused
    public func resumeBackgroundMusic() {
        if let player = backgroundMusicPlayer {
            if !player.isPlaying {
                player.play()
            }
        }
    }

    /// Plays a sound effect from the specified file
    /// - Parameter filename: The name of the audio file to play
    public func playSoundEffect(_ filename: String) {
        let url = Bundle.main.url(forResource: filename, withExtension: nil)
        if url == nil {
            print("Could not find file: \(filename)")
            return
        }

        var error: NSError?
        do {
            soundEffectPlayer = try AVAudioPlayer(contentsOf: url!)
        } catch let error1 as NSError {
            error = error1
            soundEffectPlayer = nil
        }
        if let player = soundEffectPlayer {
            player.numberOfLoops = 0
            player.prepareToPlay()
            player.play()
        } else {
            print("Could not create audio player: \(error!)")
        }
    }
}

private let SKTAudioInstance = SKTAudio()
