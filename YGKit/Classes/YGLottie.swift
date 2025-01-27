import UIKit
import Lottie

extension LottieAnimationView {
    /// 快速初始化
    /// - Parameters:
    ///   - name: 动画文件名
    ///   - loopMode: 循环模式，默认为 `.loop`
    ///   - contentMode: 内容模式，默认为 `.scaleAspectFit`
    static func create(name: String, loopMode: LottieLoopMode = .loop, contentMode: UIView.ContentMode = .scaleAspectFit) -> LottieAnimationView {
    
        let lottieAnimationView = LottieAnimationView(name: name)
        lottieAnimationView.loopMode = loopMode
        lottieAnimationView.contentMode = contentMode
        lottieAnimationView.backgroundBehavior = .pauseAndRestore
        return lottieAnimationView
    }
}

extension LottieAnimationView {
    /// 播放动画
    /// - Parameters:
    ///   - completion: 动画完成时的回调
    public func playAnimation(completion: ((Bool) -> Void)? = nil) {
        play(completion: completion)
    }
    
    /// 停止动画
    public func stopAnimation() {
        stop()
    }
    
    /// 设置动画进度
    /// - Parameter progress: 动画进度（0.0 - 1.0）
    public func setAnimationProgress(_ progress: CGFloat) {
        currentProgress = progress
    }
    
    /// 重置动画
    public func resetAnimation() {
        stop()
        currentProgress = 0
    }
}

extension LottieAnimationView {
    /// 设置动画中的颜色
    /// - Parameters:
    ///   - keypath: 动画中的颜色路径（例如 "**.Fill 1.Color"）
    ///   - color: 目标颜色
    public func setColor(for keypath: String, to color: UIColor) {
        let colorValueProvider = ColorValueProvider(color.lottieColorValue)
        setValueProvider(colorValueProvider, keypath: AnimationKeypath(keypath: keypath))
    }
}

extension LottieAnimationView {
    /// 从 URL 加载动画
    /// - Parameters:
    ///   - url: 动画文件的 URL
    ///   - completion: 加载完成后的回调
    public func loadFromURL(_ url: URL, completion: (() -> Void)? = nil) {
        LottieAnimation.loadedFrom(url: url, closure: { [weak self] animation in
            guard let self = self else { return }
            self.animation = animation
            completion?()
        }, animationCache: DefaultAnimationCache.sharedCache)
    }
}

extension UIView {
    /// 快速添加 Lottie 动画视图
    /// - Parameters:
    ///   - name: 动画文件名
    ///   - frame: 动画视图的 frame
    ///   - loopMode: 循环模式，默认为 `.loop`
    /// - Returns: 创建的 AnimationView
    public func addLottieAnimation(name: String, frame: CGRect, loopMode: LottieLoopMode = .loop) -> LottieAnimationView {
        let animationView = LottieAnimationView.create(name: name, loopMode: loopMode)
        animationView.frame = frame
        addSubview(animationView)
        return animationView
    }
}
