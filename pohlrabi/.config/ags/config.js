const battery = await Service.import('battery')

const continuous = Widget.LevelBar({
    widthRequest: 100,
    value: battery.bind("percent").as(p => p / 100),
})

const Bar = (monitor = 0) => Widget.Window({
  monitor,
  name: `bar${monitor}`,
  anchor: ['top'],
  child: continuous, 
})  

App.config({
  windows: [
    Bar(0) 
  ]
})

