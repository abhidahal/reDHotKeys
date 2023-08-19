; Spaace Nagic Key For Virtual Windows

; LAlt & `::showAllVirtualDesktop()
LAlt & 1::switchDesktopByNumber(1)
LALt & 2::switchDesktopByNumber(2)
LALt & 3::switchDesktopByNumber(3)
LALt & 4::switchDesktopByNumber(4)
LALt & 5::switchDesktopByNumber(5)
LALt & 6::switchDesktopByNumber(6)
LALt & 7::switchDesktopByNumber(7)
LALt & 8::switchDesktopByNumber(8)
LALt & 9::switchDesktopByNumber(9)

RAlt & j::switchDesktopToLeft()
RAlt & k::switchDesktopToRight()

LAlt & +::createVirtualDesktop()
LAlt & -::deleteVirtualDesktop()

RAlt & 1::MoveCurrentWindowToDesktop(1)
RAlt & 2::MoveCurrentWindowToDesktop(2)
RAlt & 3::MoveCurrentWindowToDesktop(3)
RAlt & 4::MoveCurrentWindowToDesktop(4)
RAlt & 5::MoveCurrentWindowToDesktop(5)
RAlt & 6::MoveCurrentWindowToDesktop(6)
RAlt & 7::MoveCurrentWindowToDesktop(7)
RAlt & 8::MoveCurrentWindowToDesktop(8)
RAlt & 9::MoveCurrentWindowToDesktop(9)

RALt & l::MoveCurrentWindowToRightDesktop()
RALt & h::MoveCurrentWindowToLeftDesktop()

LAlt & `::switchDesktopToLastOpened()

; Help tool tip
LALt & /::showHelpToolTip()

; Redragon Volume Knob for Scroll and mouse movement

^Volume_Down::toggleScrollOrMouseY(30)
^Volume_Up::toggleScrollOrMouseY(-30)
!Volume_Down::toggleScrollOrMouseX(-30)
!Volume_Up::toggleScrollOrMousex(30)
Pause::mouseClick()

; Windows Kep To FlowLauncher

LWin::winToFlowLauncher()
!x::!F4

; CapsLock Vim Toggle
CapsLock::vimToggleModeOnHold()
