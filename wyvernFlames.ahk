Space::Space
RAlt::Enter

; Spaace Nagic Key For Virtual Windows

Space & Numpad1::switchDesktopByNumber(1)
Space & Numpad2::switchDesktopByNumber(2)
Space & Numpad3::switchDesktopByNumber(3)
Space & Numpad4::switchDesktopByNumber(4)
Space & Numpad5::switchDesktopByNumber(5)
Space & Numpad6::switchDesktopByNumber(6)
Space & Numpad7::switchDesktopByNumber(7)
Space & Numpad8::switchDesktopByNumber(8)
Space & Numpad9::switchDesktopByNumber(9)

Space & 1::switchDesktopByNumber(1)
Space & 2::switchDesktopByNumber(2)
Space & 3::switchDesktopByNumber(3)
Space & 4::switchDesktopByNumber(4)
Space & 5::switchDesktopByNumber(5)
Space & 6::switchDesktopByNumber(6)
Space & 7::switchDesktopByNumber(7)
Space & 8::switchDesktopByNumber(8)
Space & 9::switchDesktopByNumber(9)

Space & j::switchDesktopToLeft()
Space & k::switchDesktopToRight()
Space & o::createVirtualDesktop()
Space & x::deleteVirtualDesktop()

Space & l::MoveCurrentWindowToRightDesktop()
Space & h::MoveCurrentWindowToLeftDesktop()
Space & `::showAllVirtualDesktop()

LWin & tab::switchDesktopToLastOpened()

; Redragon Volume Knob

!Volume_Up::MouseClick,WheelUp,,,1,0,D,R
!Volume_Down::MouseClick,WheelDown,,,1,0,D,R
^Volume_Down::AdjustScreenBrightness(-20)
^Volume_Up::AdjustScreenBrightness(20)

; Windows Kep To FlowLauncher

LWin::winToFlowLauncher()
!x::!F4

; CapsLock Vim Toggle
CapsLock::vimToggleModeOnPress()
