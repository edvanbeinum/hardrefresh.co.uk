# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
["Firefox", "Safari", "Chrome", "Internet Explorer", "Opera"].each do |browser|
  Browser.find_or_create_by_name(browser)
end

["Mac OSX", "Linux", "Windows"].each do |platform|
  Platform.find_or_create_by_name(platform)
end

Instruction.delete_all

mac_osx = 1
linux = 2
windows = 3

firefox = 1
safari = 2
chrome = 3
ie = 4
opera = 5

Instruction.create(
  platform_id: mac_osx,
  browser_id: firefox,
  content: "1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Backspace</span>
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'"
)

Instruction.create(
  platform_id: linux,
  browser_id: firefox,
  content: "1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span> and
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'"
)

Instruction.create(
  platform_id: windows,
  browser_id: firefox,
  content: "1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span>
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked
3. Then click '_Clear Now_'"
)

Instruction.create(
  platform_id: mac_osx,
  browser_id: safari,
  content: "1. <span class='keyboard-key'>Alt</span> + <span class='keyboard-key'>Cmd</span>, <span class='keyboard-key'>E</span>
2. Then click '_Clear_'"
)

Instruction.create(
  platform_id: windows,
  browser_id: safari,
  content: "1. <span class='keyboard-key'>Ctrl </span>+ <span class='keyboard-key'>Alt</span> + <span class='keyboard-key'>E</span>
2. Click '_Empty_'"
)

Instruction.create(
  platform_id: mac_osx,
  browser_id: chrome,
  content: "1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Backspace</span>
2. Then click '_Clear Browsing Data_'"
)

Instruction.create(
  platform_id: linux,
  browser_id: chrome,
  content: "1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span> and
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'"
)

Instruction.create(
  platform_id: windows,
  browser_id: chrome,
  content: "1. <span class='keyboard-key'>Ctrl</span>  + <span class='keyboard-key'>Shift</span>  + <span class='keyboard-key'>Del</span>
2. Click '_Clear browsing data_'"
)

Instruction.create(
  platform_id: windows,
  browser_id: ie,
  content: "1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span>
2. Make sure '_Temporary Internet files_' is checked
3. Click '_Delete_'"
)

Instruction.create(
  platform_id: mac_osx,
  browser_id: opera,
  content: "1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>,</span>
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box."
)

Instruction.create(
  platform_id: linux,
  browser_id: opera,
  content: "1. Click '_Preferences_' from the '_Tools_' menu
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box."
)

Instruction.create(
  platform_id: windows,
  browser_id: opera,
  content: "1. <span class='keyboard-key'>Ctrl</span>  + <span class='keyboard-key'>F12</span>
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box."
)


