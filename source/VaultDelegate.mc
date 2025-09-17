import Toybox.System;
import Toybox.WatchUi;

class VaultDelegate extends WatchUi.Menu2InputDelegate {

    // Build the first (interactive) screen and return [view, delegate]
    function getStartViewAndDelegate() {
        var menu = new WatchUi.Menu2({
            :title     => "Vault",
            :menuItems => [
                { :id => :item_read, :label => "Read secret" },
                { :id => :item_edit, :label => "Edit / Create" }
            ]
        });
        return [ menu, self ];
    }

    function onSelect(item) {
        var id = item.getId();
        if (id == :item_read) {
            System.println("Read selected");   // TODO: push password-entry view later
        } else if (id == :item_edit) {
            System.println("Edit selected");   // TODO: push editor view later
        }
        // onSelect returns void in this SDK
    }

    // You can omit onBack() entirely for the root view.
}
