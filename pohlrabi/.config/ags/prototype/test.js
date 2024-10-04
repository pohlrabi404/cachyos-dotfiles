const testvar = Variable("1", {
  listen: ['bash', '-c', "swaymsg -t get_outputs | jq -r '.. | select(.focused? == true).current_workspace'"],
})
const testlabel = Widget.Label({
  label: testvar.bind().as(i => i),
})

const TEST_WINDOW_NAME = "test"
export const test = Widget.Window({
  name: TEST_WINDOW_NAME,
  child: testlabel
})
