(function () {
  "use strict";
  var nativePopover = Object.hasOwn(HTMLElement.prototype, "popover");
  var nativeCommand = "commandForElement" in HTMLButtonElement.prototype;
  var nativeFocusgroup = "focusGroup" in HTMLElement.prototype;
  var anchorPosition = window.CSS && CSS.supports("position-area", "block-start");

  document.querySelectorAll("[data-bruno-menu]").forEach(function (root) {
    var trigger = root.querySelector("[data-bruno-trigger]");
    var popover = root.querySelector("[data-bruno-popover]");
    var group = popover && popover.querySelector("[focusgroup]");
    if (!trigger || !popover || !group) return;
    if (!nativePopover) popover.removeAttribute("popover");
    if (!nativeCommand) {
      trigger.removeAttribute("commandfor");
      trigger.removeAttribute("command");
    }

    function items() {
      return Array.prototype.filter.call(group.querySelectorAll("a, button"), function (item) {
        return item.closest("[focusgroup]") === group;
      });
    }

    function isOpen() {
      if (nativePopover && popover.hasAttribute("popover")) {
        return popover.matches(":popover-open") || popover.classList.contains(":popover-open");
      }
      return popover.classList.contains("is-open");
    }

    function setExpanded(open) {
      trigger.setAttribute("aria-expanded", open ? "true" : "false");
    }

    function position() {
      if (anchorPosition && popover.hasAttribute("popover")) return;
      var rect = trigger.getBoundingClientRect();
      if (!popover.hasAttribute("popover")) popover.hidden = false;
      popover.style.position = "fixed";
      popover.style.margin = "0";
      popover.style.inset = "auto";
      var width = popover.offsetWidth;
      var height = popover.offsetHeight;
      var left = Math.min(Math.max(8, rect.right - width), window.innerWidth - width - 8);
      var top = rect.top - height - 8;
      if (top < 8) top = Math.min(rect.bottom + 8, window.innerHeight - height - 8);
      popover.style.left = left + "px";
      popover.style.top = Math.max(8, top) + "px";
    }

    function enter() {
      var first = items()[0];
      if (first) first.focus();
    }

    function show(fromKeyboard) {
      if (nativePopover && popover.hasAttribute("popover")) {
        if (fromKeyboard) popover.dataset.enter = "true";
        if (!isOpen() && typeof popover.showPopover === "function") {
          try { popover.showPopover({ source: trigger }); }
          catch (error) { popover.showPopover(); }
        } else if (fromKeyboard) enter();
      } else {
        popover.classList.add("is-open");
        popover.hidden = false;
        setExpanded(true);
        position();
        if (fromKeyboard) enter();
      }
    }

    function hide(restoreFocus) {
      if (restoreFocus) trigger.focus();
      if (nativePopover && popover.hasAttribute("popover") && isOpen() && typeof popover.hidePopover === "function") {
        popover.hidePopover();
      } else {
        popover.classList.remove("is-open");
        popover.hidden = true;
        setExpanded(false);
      }
    }

    if (nativePopover && popover.hasAttribute("popover")) {
      popover.addEventListener("toggle", function (event) {
        var open = event.newState === "open";
        setExpanded(open);
        if (!open) return;
        position();
        if (popover.dataset.enter === "true") {
          popover.dataset.enter = "";
          enter();
        }
      });
    }

    if (!nativeCommand) {
      trigger.addEventListener("click", function () {
        if (isOpen()) hide(false);
        else show(false);
      });
    }

    trigger.addEventListener("keydown", function (event) {
      if (event.key !== "ArrowDown" && event.key !== "ArrowUp") return;
      event.preventDefault();
      if (nativeCommand && nativePopover && popover.hasAttribute("popover") && !isOpen()) {
        popover.dataset.enter = "true";
        trigger.click();
      } else show(true);
    });

    if (!nativeFocusgroup) {
      group.setAttribute("role", "menu");
      items().forEach(function (item) {
        if (!item.getAttribute("role")) item.setAttribute("role", "menuitem");
      });
      group.addEventListener("keydown", function (event) {
        if (["ArrowDown", "ArrowUp", "Home", "End"].indexOf(event.key) === -1) return;
        var list = items();
        var current = list.indexOf(document.activeElement);
        if (current < 0) return;
        event.preventDefault();
        var next = event.key === "Home" ? 0 : event.key === "End" ? list.length - 1
          : (current + (event.key === "ArrowUp" ? -1 : 1) + list.length) % list.length;
        list[next].focus();
      });
    } else {
      group.addEventListener("keydown", function (event) {
        if (event.key !== "Home" && event.key !== "End") return;
        var list = items();
        if (!list.length || list.indexOf(document.activeElement) < 0) return;
        event.preventDefault();
        list[event.key === "Home" ? 0 : list.length - 1].focus();
      });
    }

    group.addEventListener("click", function (event) {
      if (event.target.closest("a")) hide(false);
    });

    document.addEventListener("keydown", function (event) {
      if (event.key === "Escape" && isOpen()) {
        event.stopPropagation();
        hide(true);
      }
    });

    window.addEventListener("resize", function () { if (isOpen()) position(); });
  });
})();
