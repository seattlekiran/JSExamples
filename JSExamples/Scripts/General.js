function validateArgs(types, args) {
    if (types.length != args.length) {
        throw "didn't receive expected number of arguments";
    }

    for (var i = 0; i < types.length; i++) {
        if (args[i].constructor != types[i]) {
            throw "received unexpected type of argument(s)";
        }
    }
};

function id(name) {
    if (name == undefined || name == null) {
        throw "invalid input. provide id name.";
    }

    return document.getElementById(name);
};

function tag(name) {
    
};