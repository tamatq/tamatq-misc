on open objects
	repeat with obj in objects
		set data_status to do shell script "cat " & (quoted form of the POSIX path of obj) & " | LANG=C sed 's/[^A-Za-z0-9 :]//g' | grep -q 'PDFText' && echo not OL || echo OL"
		set filename_status to do shell script "echo " & (quoted form of the POSIX path of obj) & " | grep -i -q '[^a-zA-Z0-9][oｏＯ][lｌＬ][^a-zA-Z0-9]' && echo OL || echo not OL"
		
		set status to "OK"
		if data_status is not filename_status then
			set status to "NG: ファイル名とデータのアウトラインの状態が食い違っている"
		end if
		
		set raw_version_str to do shell script "cat " & (quoted form of the POSIX path of obj) & " | LANG=C sed 's/[^A-Za-z0-9 :]//g' | grep -o 'RoundtripVersion [0-9]\\+' | grep -o '[0-9]\\+' || echo 0"
		
		set raw_version to raw_version_str as number
		set ai_version to "RoundtripVersion " & raw_version
		
		if raw_version = 0 then
			set ai_version to "not .ai file"
		else if raw_version ≤ 10 then
			set ai_version to "Illustrator " & raw_version
		else if raw_version ≤ 11 then
			set ai_version to "Illustrator CS"
		else if raw_version ≤ 16 then
			set ai_version to "Illustrator CS" & (raw_version - 10)
		else if raw_version ≤ 17 then
			set ai_version to "Illustrator CC"
		else if raw_version ≤ 18 then
			set ai_version to "Illustrator CC2014"
		else if raw_version ≤ 19 then
			set ai_version to "Illustrator CC2015"
		else if raw_version ≤ 20 then
			set ai_version to "Illustrator CC2015.3"
		else if raw_version ≤ 21 then
			set ai_version to "Illustrator CC2017"
		else if raw_version ≤ 22 then
			set ai_version to "Illustrator CC2018"
		else if raw_version ≤ 23 then
			set ai_version to "Illustrator 2019"
		else if raw_version ≤ 24 then
			set ai_version to "Illustrator 2020"
		end if
		
		display alert status & "
データ: " & data_status & "
ファイル名: " & filename_status & ": " & (POSIX path of obj) & "
バージョン: " & ai_version
	end repeat
end open
