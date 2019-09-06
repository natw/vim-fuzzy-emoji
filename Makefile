emoji-test.txt:
	curl https://unicode.org/Public/emoji/12.0/emoji-test.txt -O $@

# if I was better at regexes I could grab the code without the trailing whitespace
# also, I'm suprised Perl doesn't have a more succinct way of trimming whitespace
emoji-data.txt: emoji-test.txt
	cat emoji-test.txt | grep -v "^#" | perl -lne '/(?<code>.*)(?:\s+;\s)(?<type>.+)(?:\s+#)\s(?<emoji>\S+)\s(?<description>.+)/ && print $$+{emoji} . " - " . $$+{description} . " (" . $$+{code} =~ s/^\s+|\s+$$//rgn . ")"' > $@

