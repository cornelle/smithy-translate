$version: "2"

namespace demo.common

use alloy.proto#protoIndex

// protoindex is not necessary , this is just for demo purposes
enum Language{
    @protoIndex(0)
    FRENCH
    @protoIndex(1)
    ENGLISH
}

@length(min: 1, max: 20)
string Name

@pattern("^[0-9]+\\.[0-9]+\\.[0-9]+$")
string Version

@range(min: 10, max: 1000000)
long ConstrainedLong

@pattern("^(Go to |Try | Eat | Walk | Listen to | Read | Watch) (\\w| |,|.)+$")
string Suggestion