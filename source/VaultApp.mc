import Toybox.Application;

class VaultApp extends Application.AppBase {
    var _delegate;

    function initialize() {
        Application.AppBase.initialize();
        _delegate = new VaultDelegate();
    }

    function onStart(state) {
        var pair = _delegate.getStartViewAndDelegate();
        WatchUi.pushView(pair[0], pair[1], WatchUi.SLIDE_IMMEDIATE);
    }

    // Hand the initial View + its delegate to the runtime
    function getInitialView() {
        return _delegate.getStartViewAndDelegate();
    }
}
