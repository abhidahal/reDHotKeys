$1::valoComms(3,3)
$2::valoComms(3,4)
$3::valoComms(3,2)
$5::valoComms(2,3)
$6::valoComms(2,4)
$7::valoComms(2,5)
$8::valoComms(1,3)
$9::valoComms(2,2)
$Numpad3::valoComms(4,5)
$Numpad4::valoComms(4,2)
$Numpad5::valoComms(4,3)
$Numpad6::valoComms(4,4)
$Numpad7::valoComms(1,1)
$Numpad8::valoComms(1,2)
$Numpad9::valoComms(1,4)
`::valoComms(3,6)

valoComms(a,b){
    KeyWait, ., T0.4
    send, .
    KeyWait, %a%, T0.4
    send, %a%
    KeyWait, %b%, T0.4
    send, %b%
}
