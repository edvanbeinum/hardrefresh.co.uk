browsers = Hash.new

["firefox", "safari", "chrome", "ie", "opera"].each do |browser|
  new_browser = Browser.find_or_create_by_name(browser)
  browsers[browser] = new_browser.id
end

platforms = Hash.new

["macintosh", "linux", "windows"].each do |platform|
  new_platform = Platform.find_or_create_by_name(platform)
  platforms[platform] = new_platform.id
end

Instruction.delete_all

Instruction.create(
  platform_id: platforms['macintosh'],
  browser_id: browsers['firefox'],
  content: "1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Backspace</span>
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'"
)

Instruction.create(
  platform_id: platforms['linux'],
  browser_id: browsers['firefox'],
  content: "1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span> and
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'"
)

Instruction.create(
  platform_id: platforms['windows'],
  browser_id: browsers['firefox'],
  content: "1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span>
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked
3. Then click '_Clear Now_'"
)

Instruction.create(
  platform_id: platforms['macintosh'],
  browser_id: browsers['safari'],
  content: "1. <span class='keyboard-key'>Alt</span> + <span class='keyboard-key'>Cmd</span>, <span class='keyboard-key'>E</span>
2. Then click '_Clear_'"
)

Instruction.create(
  platform_id: platforms['windows'],
  browser_id: browsers['safari'],
  content: "1. <span class='keyboard-key'>Ctrl </span>+ <span class='keyboard-key'>Alt</span> + <span class='keyboard-key'>E</span>
2. Click '_Empty_'"
)

Instruction.create(
  platform_id: platforms['macintosh'],
  browser_id: browsers['chrome'],
  content: "1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Backspace</span>
2. Then click '_Clear Browsing Data_'"
)

Instruction.create(
  platform_id: platforms['linux'],
  browser_id: browsers['chrome'],
  content: "1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span> and
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'"
)

Instruction.create(
  platform_id: platforms['windows'],
  browser_id: browsers['chrome'],
  content: "1. <span class='keyboard-key'>Ctrl</span>  + <span class='keyboard-key'>Shift</span>  + <span class='keyboard-key'>Del</span>
2. Click '_Clear browsing data_'"
)

Instruction.create(
  platform_id: platforms['windows'],
  browser_id: browsers['ie'],
  content: "1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span>
2. Make sure '_Temporary Internet files_' is checked
3. Click '_Delete_'"
)

Instruction.create(
  platform_id: platforms['macintosh'],
  browser_id: browsers['opera'],
  content: "1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>,</span>
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box."
)

Instruction.create(
  platform_id: platforms['linux'],
  browser_id: browsers['opera'],
  content: "1. Click '_Preferences_' from the '_Tools_' menu
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box."
)

Instruction.create(
  platform_id: platforms['windows'],
  browser_id: browsers['opera'],
  content: "1. <span class='keyboard-key'>Ctrl</span>  + <span class='keyboard-key'>F12</span>
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box."
)


