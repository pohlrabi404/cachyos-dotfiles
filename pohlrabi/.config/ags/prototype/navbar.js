const Left = () => Widget.

const NAV_BAR = "NavBar"
export const NavBar = Widget.Window({
  name: NAV_BAR
  child: Widget.CenterBox({
    vertical: false,
    startWidget: Left(),
    centerWidget: Center(),
    endWidget: Right(),
  }))
