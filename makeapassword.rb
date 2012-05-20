## makeapassword by Martin Josefsson, 20/5 2012
## If anyone ever uses this code, feel free to send a short mail to josefsson.martin+makeapasswordrb@gmail.com. 
## The software is free for anyone to use for any purpose that isnt mean or evil, but I don't take any
## responsability that it will work, or that it will not kill a kitten. Just don't remove theese comments, please!

# Functionality: create a (very) hard-to-bruteforce password and
# print it to SDTOUT and to the clipboard for easy pasting into forms and password managers.
require 'rubygems'
require 'clipboard'

if ARGV[0] === nil
	leng = 500
else
	leng = ARGV[0]
end

def create_password(pwdlen)
	# Defines what character to use in building the password
	chars = ('a'..'z').to_a + ('0'..'9').to_a + ('A'..'Z').to_a + 'ÅÄÖ¶©@£$∞§|[]≈±´°!"#€%&/()=?^¨~™-.,;:_'.to_a
	pwd = ''
	pwdlen.to_i.times { pwd << chars[rand(chars.length)]}

	# Houston, we have a password!
	Clipboard.copy pwd
	puts Clipboard.paste
end

create_password(leng)