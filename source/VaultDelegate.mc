import Toybox.Lang;
import Toybox.WatchUi;

class VaultDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new VaultMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}