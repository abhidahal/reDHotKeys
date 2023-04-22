Space::Space
RAlt::Enter

; Spaace Nagic Key For Virtual Windows
Space & `::showAllVirtualDesktop()

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

Space & +::createVirtualDesktop()
Space & -::deleteVirtualDesktop()

Space & q::MoveCurrentWindowToDesktop(1)
Space & w::MoveCurrentWindowToDesktop(2)
Space & e::MoveCurrentWindowToDesktop(3)
Space & r::MoveCurrentWindowToDesktop(4)
Space & t::MoveCurrentWindowToDesktop(5)
Space & y::MoveCurrentWindowToDesktop(6)
Space & u::MoveCurrentWindowToDesktop(7)
Space & i::MoveCurrentWindowToDesktop(8)
Space & p::MoveCurrentWindowToDesktop(9)

Space & l::MoveCurrentWindowToRightDesktop()
Space & h::MoveCurrentWindowToLeftDesktop()

Space  & tab::switchDesktopToLastOpened()

; Redragon Volume Knob

!Volume_Up::MouseClick,WheelUp,,,1,0,D,R
!Volume_Down::MouseClick,WheelDown,,,1,0,D,R
^Volume_Down::AdjustScreenBrightness(-20)
^Volume_Up::AdjustScreenBrightness(20)

; Windows Kep To FlowLauncher

LWin::winToFlowLauncher()
!x::!F4

; CapsLock Vim Toggle
CapsLock::vimToggleModeOnHold()
