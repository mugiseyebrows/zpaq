./zpaq add archive.zpaq zpaq
./zpaq extract archive.zpaq zpaq -to zpaq.new
cmp zpaq zpaq.new
rm archive.zpaq zpaq.new