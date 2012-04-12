#DROP TABLE IF EXISTS "browsers";
#CREATE TABLE "browsers" ("id" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , "name" TEXT UNIQUE );
INSERT INTO "browsers" VALUES(1,'Firefox');
INSERT INTO "browsers" VALUES(2,'Safari');
INSERT INTO "browsers" VALUES(3,'Chrome');
INSERT INTO "browsers" VALUES(4,'Internet Explorer');
INSERT INTO "browsers" VALUES(5,'Opera');


INSERT INTO "platforms" VALUES(1,'Mac OS X');
INSERT INTO "platforms" VALUES(2,'Linux');
INSERT INTO "platforms" VALUES(3,'Windows');

#DROP TABLE IF EXISTS "instructions";
#CREATE TABLE "instructions" ("id" INTEGER PRIMARY KEY  NOT NULL  UNIQUE , "content" TEXT , "platform_id" INTEGER, "browser_id" INTEGER);

#FF
INSERT INTO "instructions" VALUES(1,'1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Backspace</span>
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'',1,1);

INSERT INTO "instructions" VALUES(8,'1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span>
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked
3. Then click '_Clear Now_'',3,1);

INSERT INTO "instructions" VALUES(5,'1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span> and
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'',2,1);

#Safari
INSERT INTO "instructions" VALUES(2,'1. <span class='keyboard-key'>Alt</span> + <span class='keyboard-key'>Cmd</span>, <span class='keyboard-key'>E</span>
2. Then click '_Clear_'',1,2);

INSERT INTO "instructions" VALUES(9,'1. <span class='keyboard-key'>Ctrl </span>+ <span class='keyboard-key'>Alt</span> + <span class='keyboard-key'>E</span>
2. Click '_Empty_'',3,2);

#Chrome
INSERT INTO "instructions" VALUES(3,'1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Backspace</span>
2. Then click '_Clear Browsing Data_'',1,3);

INSERT INTO "instructions" VALUES(6,'1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span> and
2. Select '_Everything_' from the dropdown box and make sure the '_Cache_' checkbox is ticked.
3. Then click '_Clear Now_'',2,3);

INSERT INTO "instructions" VALUES(10,'1. <span class='keyboard-key'>Ctrl</span>  + <span class='keyboard-key'>Shift</span>  + <span class='keyboard-key'>Del</span>
2. Click '_Clear browsing data_'',3,3);

#IE
INSERT INTO "instructions" VALUES(11,'1. <span class='keyboard-key'>Ctrl</span> + <span class='keyboard-key'>Shift</span> + <span class='keyboard-key'>Delete</span>
2. Make sure '_Temporary Internet files_' is checked
3. Click '_Delete_'',3,4);

#Opera
INSERT INTO "instructions" VALUES(4,'1. <span class='keyboard-key'>Cmd</span> + <span class='keyboard-key'>,</span>
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box. Phew!',1,5);


INSERT INTO "instructions" VALUES(7,'1. Click '_Preferences_' from the '_Tools_' menu
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box. Phew!',2,5);


INSERT INTO "instructions" VALUES(12,'1. <span class='keyboard-key'>Ctrl</span>  + <span class='keyboard-key'>F12</span>
2. Click '_Advanced_'
3. Click on -_History_- on the left hand menu
4. Then click '_Empty Now_' next to the '_Disk Cache_' section
5. Then click '_OK_' to close the Preferences dialog box. Phew!',3,5);

