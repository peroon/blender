require "fileutils"
require "securerandom"

#作業場
FileUtils.mkdir("temp")

#直下のフォルダ一覧 PNGで保存されていることを仮定
path_list = Dir.glob('*/output.png')

path_list.each do |path|
	ext = File.extname(path)

	filename = SecureRandom.hex(8) + ext
	#適当に名前を付けてコピー
	FileUtils.copy(path, "temp/" + filename)
end

Dir.chdir("temp")

#モンタージュ画像作成
system("montage -geometry +0+0 -resize 200x200! * montage.jpg")
system("mv montage.jpg ../")
Dir.chdir('..')

#掃除
system("rm temp/*")
FileUtils.rmdir("temp")
