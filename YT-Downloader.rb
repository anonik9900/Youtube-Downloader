#YT-Downloader by Nicholas Impieri Aka Anonik
#License: MIT License
#Year: 2018
#Language: Ruby

require 'inifile'
require 'youtube-dl'

#Language Loading
ini = IniFile.load('config/config.ini')
ini['Settings']['Language']


if ini['Settings']['Language'] == "Italian"

puts print "YOUTUBE DOWNLOADER BY NICHOLAS IMPIERI"
puts
puts print "Inserisci il link del video youtube "
puts
url = gets.chomp

puts
puts print "Come vuoi nominarlo ? "
puts
video = gets.chomp



puts
ext = '.mp4'
filevideo = video + ext
#percorso = 'video-saved/'

percorso = ini['Download Path']['Path']

YoutubeDL.download url, output: percorso + filevideo  #'video-saved/'filevideo

end